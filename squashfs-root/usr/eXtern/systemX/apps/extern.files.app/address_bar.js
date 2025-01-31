var events = require("events");
var path = require('path');
var jade = require('jade');
var util = require("util");
var localVars = {};

// Template engine
var gen_bar = jade.compile([
    '- each item, i in sequence',
    '  - if (i != sequence.length - 1 || (sequence.length != 1 && i != 1))',
    '    li(data-path="#{item.path}")',
    '      span(class = "next_dir icon nav_buttons") #{item.icon}',
    '      a(href="#") #{item.name}',
    '      span.divider ',
   '  - else',
    '    li.active(data-path="#{item.path}")',
    '      span(class = "next_dir icon nav_buttons") #{item.icon}',
    '      a(href="#") #{item.name}',
].join('\n'));

var gen_one_fie = jade.compile([
    'li(data-path="#{item.path}")',
    '  a(href="#") #{item.name}',
].join('\n'));

// Our real type
function AddressBar(element) {
  events.EventEmitter.call(this);
  this.element = element;

  // Monitor click on AddressBar
  var self = this;
  element.delegate('a', 'click', function() {
      
      //hide the rename option
      localVars.$("#renameButtonMain").fadeOut();
      
    self.element.children('.active').removeClass('active');
    localVars.$(this).parent().addClass('active');

    self.emit('navigate', localVars.$(this).parent().attr('data-path'));

    return false;
  });
}

util.inherits(AddressBar, events.EventEmitter);

AddressBar.prototype.set = function(dir_path) {
  this.current_path = path.normalize(dir_path);

  // Split path into separate elements
  var sequence = this.current_path.split(path.sep);
  var result = [];

  var i = 0;
  for (; i < sequence.length; ++i) {
      if (sequence[i-2] == "media" && i==3)
          var dir_icon = '&#61831;';
      else
          var dir_icon = '&#61882;';
      
      console.log("sequence "+i+" is "+sequence[i]);
    //if (sequence.length != 2 && i !=2 && sequence[i] != "")      
    result.push({
      name: sequence[i],
      path: sequence.slice(0, 1 + i).join(path.sep),
        icon: dir_icon,
    });
  }
console.log("sequence length: "+sequence.length);
  // Add root for *nix
  if (sequence[0] == '' && process.platform != 'win32') {
    result[0] = {
      name: 'PC',
      path: '/',
        icon: '&#61729;',
    };
  }

  this.element.html(gen_bar({ sequence: result }));
}

AddressBar.prototype.enter = function(mine) {
  // Where is current
  var how_many = this.element.children().length;
    console.log("hw many: "+how_many);
  var where = this.element.children('.active').index();
  if (where == how_many - 1) {
    // Add '/' on tail
  } else {
    this.element.children('li:gt(' + where + ')').remove();
  }

  // Add new folder
  this.element.append(gen_one_fie({ item: mine }));
  this.element.find('a:last').trigger('click');
}

exports.AddressBar = AddressBar;
exports.localVars = localVars;
