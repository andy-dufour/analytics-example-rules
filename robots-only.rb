rules 'Robots Only'
  rule on action
  when
    requestor_type = "user"
    and requestor_name != "robot"
  then
    notify("webhook1","{{message.name}} (cookbook {{message.cookbook_name}})")
    alert:error('Someone has changed something they are not supposed to.')
    set(#silly_human,"changes are for robots!")
  end
end
