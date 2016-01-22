rules 'alert on controls'
  rule on run_control
  when
    status = 'success'
  then
    notify('hipchat','Audit control [{{message.control_group.name}} {{message.name}}] finished with status [{{message.status}}] on {{message.run.node_name}}')
    alert:info('Audit control [{{message.control_group.name}} {{message.name}}] finished with status [{{message.status}}] on {{message.run.node_name}}')
  otherwise
    notify('hipchat-red','Audit control [{{message.control_group.name}} {{message.name}}] finished with status [{{message.status}}] on {{message.run.node_name}}')
    alert:warn('Audit control [{{message.control_group.name}} {{message.name}}] finished with status [{{message.status}}] on {{message.run.node_name}}')
  end
end
