��    #      4  /   L           	            �      �    �
  i    �  o  �  1  n  �  �  U  �    �  �   �  �"  �  4$  �  �%  �  �'     Z)     `)  	   e)     o)     t)  	   y)  	   �)     �)     �)     �)     �)     �)     �)     �)     *     (*     <*  �  Y*     ,     ,     ,  �  ,    �0    �3  i  7  �  l:  �  .?  n  �B  �  RF  �  H  �  �I  �  �K  �  1M  �  �N  �  �P     WR     ]R  	   bR  
   lR     wR  	   }R  	   �R     �R     �R     �R     �R     �R     �R     �R     �R     �R     �R                               !                       #                                       	                        
                                 "       %1 G %1 K %1 M <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Batch Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-weight:600;"><span style=" font-weight:400; font-style:italic;">(Since Linux 2.6.16.)</span><span style=" font-weight:400;"> This policy is similar to </span>Normal<span style=" font-weight:400;">, except that this policy will cause the scheduler to always assume that the process is CPU-intensive.  Consequently, the scheduler will apply a small scheduling penalty so that this process is mildly disfavored in scheduling decisions. This policy is useful for workloads that are non-interactive, but do not want to lower their nice value, and for workloads that want a deterministic scheduling policy without interactivity causing extra preemptions (between the workload's tasks).</span></p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Best Effort Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Processes with a higher priority will take priority for access to the hard disk.  Programs running at the same <span style=" font-weight:600;">Best Effort/Normal</span> priority are served in a <span style=" font-weight:600;">Round Robin</span> fashion.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">First In-First Out Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">When  a  <span style=" font-weight:600;">FIFO</span> process  becomes  runnable,  it  will always immediately preempt any currently running <span style=" font-weight:600;">Normal</span> or <span style=" font-weight:600;">Batch</span> process.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Idle Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">A  program running with <span style=" font-weight:600;">Idle</span> I/O priority will only get disk time when no other program has asked for disk I/O for a defined grace period. The impact of <span style=" font-weight:600;">Idle</span> I/O processes on normal system activity should be zero. Priority is not applicable to this scheduling class.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Normal Scheduling: Default Linux time-sharing  (Other)</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-weight:600;">Normal<span style=" font-weight:400;"> is the standard Linux time-sharing scheduler that is intended for all processes that do not  require special static priority real-time mechanisms. The process to run is chosen from the list of other</span> Normal<span style=" font-weight:400;"> or </span>Batch<span style=" font-weight:400;"> processes based on a dynamic priority that is determined only inside this list. The dynamic priority is based on the priority level given and increased for each time-quantum the process is ready to run, but denied to run by the scheduler. This ensures fair progress among all Normal processes.</span></p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Normal Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">This is the same as <span style=" font-weight:600;">Best Effort</span> scheduling, except that the priority is calculated automatically based on the CPU priority.  Processes with a higher priority will take priority for access to the hard disk.  Programs running at the same <span style=" font-weight:600;">Best Effort/Normal</span> priority are served in a <span style=" font-weight:600;">Round Robin</span> fashion.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Round Robin Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Round Robin</span> is a simple enhancement of <span style=" font-weight:600;">FIFO</span>.  Everything described below for <span style=" font-weight:600;">FIFO</span> also applies to <span style=" font-weight:600;">Round Robin</span>, except that each process is only allowed to run for a maximum time quantum.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">For CPU-intensive non-interactive processes.  Process is mildly disfavored in scheduling decisions.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process can only use the hard disk when no other process has used it very recently.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process gets immediate access to the hard disk whenever needed, regardless of what else is going on.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process is given higher priority to access the hard disk than Normal.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process will run whenever runnable.  Higher priority than Normal or Batch.  Has Timeslicing.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process will run whenever runnable.  Higher priority than Normal or Batch.  No timeslicing.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">The standard time-sharing scheduler for processes without special requirements.</p></body></html> Batch FIFO Gigabytes Idle Kill Kilobytes Megabytes Normal Quick search process headingCPU % process headingCommand process headingMemory process headingName process headingNiceness process headingPID process headingTTY process headingWindow Title Project-Id-Version: kdebase-workspace
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-07-15 14:19+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Albanian <sq@li.org>
Language: sq
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2011-05-06 02:14+0000
X-Generator: Launchpad (build 12959)
 %1 G %1 K %1 M <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Batch Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-weight:600;"><span style=" font-weight:400; font-style:italic;">(Since Linux 2.6.16.)</span><span style=" font-weight:400;"> This policy is similar to </span>Normal<span style=" font-weight:400;">, except that this policy will cause the scheduler to always assume that the process is CPU-intensive.  Consequently, the scheduler will apply a small scheduling penalty so that this process is mildly disfavored in scheduling decisions. This policy is useful for workloads that are non-interactive, but do not want to lower their nice value, and for workloads that want a deterministic scheduling policy without interactivity causing extra preemptions (between the workload's tasks).</span></p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Best Effort Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Processes with a higher priority will take priority for access to the hard disk.  Programs running at the same <span style=" font-weight:600;">Best Effort/Normal</span> priority are served in a <span style=" font-weight:600;">Round Robin</span> fashion.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">First In-First Out Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">When  a  <span style=" font-weight:600;">FIFO</span> process  becomes  runnable,  it  will always immediately preempt any currently running <span style=" font-weight:600;">Normal</span> or <span style=" font-weight:600;">Batch</span> process.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Idle Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">A  program running with <span style=" font-weight:600;">Idle</span> I/O priority will only get disk time when no other program has asked for disk I/O for a defined grace period. The impact of <span style=" font-weight:600;">Idle</span> I/O processes on normal system activity should be zero. Priority is not applicable to this scheduling class.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Normal Scheduling: Default Linux time-sharing  (Other)</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-weight:600;">Normal<span style=" font-weight:400;"> is the standard Linux time-sharing scheduler that is intended for all processes that do not  require special static priority real-time mechanisms. The process to run is chosen from the list of other</span> Normal<span style=" font-weight:400;"> or </span>Batch<span style=" font-weight:400;"> processes based on a dynamic priority that is determined only inside this list. The dynamic priority is based on the priority level given and increased for each time-quantum the process is ready to run, but denied to run by the scheduler. This ensures fair progress among all Normal processes.</span></p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Normal Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">This is the same as <span style=" font-weight:600;">Best Effort</span> scheduling, except that the priority is calculated automatically based on the CPU priority.  Processes with a higher priority will take priority for access to the hard disk.  Programs running at the same <span style=" font-weight:600;">Best Effort/Normal</span> priority are served in a <span style=" font-weight:600;">Round Robin</span> fashion.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Round Robin Scheduling</span></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-weight:600;">Round Robin</span> is a simple enhancement of <span style=" font-weight:600;">FIFO</span>.  Everything described below for <span style=" font-weight:600;">FIFO</span> also applies to <span style=" font-weight:600;">Round Robin</span>, except that each process is only allowed to run for a maximum time quantum.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">For CPU-intensive non-interactive processes.  Process is mildly disfavored in scheduling decisions.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process can only use the hard disk when no other process has used it very recently.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process gets immediate access to the hard disk whenever needed, regardless of what else is going on.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process is given higher priority to access the hard disk than Normal.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process will run whenever runnable.  Higher priority than Normal or Batch.  Has Timeslicing.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Process will run whenever runnable.  Higher priority than Normal or Batch.  No timeslicing.</p></body></html> <html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">The standard time-sharing scheduler for processes without special requirements.</p></body></html> Batch FIFO Gigabytes Në Pritje Vrite Kilobytes Megabytes Normal Kërkim i shpejtë CPU % Komanda Kujtesa Emri Pëlqyeshmëria PID TTY Titulli i dritares 