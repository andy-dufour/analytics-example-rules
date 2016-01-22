rules 'audit specific controls'
  rule on run_control
  when
    control_group.name = 'system integrity' and
    name = 'telnet is not installed' and
    status != 'success'
  then
    alert:error('Specific Audit control [{{message.control_group.name}} {{message.name}}] finished with status [{{message.status}}] on {{message.run.node_name}}')
  end
end
