rules 'monitored'
  rule on run_converge
  when
    not array:contains(run_list, 'role[monitoring_agent]')
  then
    alert:warn('a machine does not have our monitoring agent configured')
    set(#NOT_MONITORED,"1")
  end
end
