base:
  '*':
    - init

prod:
  '*web':
    - jdk
    - script.web
    - cron.web
  '*web_test':
    - jdk
    - script.web
  '*oracle':
    - script.oracle
    - cron.oracle
  '*oracle_test':
    - script.oracle
  'HD2_yunpay_cc,HD2_yunpay_v2,HD2_yunpay_red,HD2_yunpay_static,HD2_yunpay_admin,HD2_yunpay_credit,HD2_yunpay_flow_recharge':
    - match: list
    - jdk
    - script.web
    - cron.web
  'HD2_yunpay_site':
    - script.web
    - cron.web
  'HD2_yunpay_vpn1,HD2_yunpay_vpn2':
    - match: list
    - script.vpn
  'PT230,PT231':
    - match: list
    - script.web
    - script.oracle
