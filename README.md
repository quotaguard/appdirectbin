# AppDirectBin
AppDirect Subscription Management API Simulator used for testing App Direct implementations. Based on documentation at <http://info.appdirect.com/developers/docs/api_integration/subscription_management> 

## Getting Started
Local installation is not required. You can access it directly at http://appdirectbin.herokuapp.com

Currently supports 

* SUBSCRIPTION_ORDER:  <http://appdirectbin.herokuapp.com/subscriptions/order.xml>
* SUBSCRIPTION_CHANGE:  <http://appdirectbin.herokuapp.com/subscriptions/change.xml>
* SUBSCRIPTION_CANCEL:  <http://appdirectbin.herokuapp.com/subscriptions/cancel.xml>
* SUBSCRIPTION_NOTICE:  <http://appdirectbin.herokuapp.com/subscriptions/notice.xml>

As part of your AppDirect setup you register endpoint URLs that AppDirect will call when a subscription event occurs.

    https://example.com/create?url={eventUrl}

AppDirectBin allows you to hit your endpoints with customized event urls, injecting variables that you want to test.

    # Use default example event
    https://example.com/create?url=http://appdirectbin.herokuapp.com/subscriptions/order.xml
    
    # Customize the event for an account identifier you are testing
    https://example.com/create?url=http://appdirectbin.herokuapp.com/subscriptions/order.xml?accountIdentifier=myapp01
    
    # Customize the event for an account identifier & edition you are testing
    https://example.com/create?url=http://appdirectbin.herokuapp.com/subscriptions/order.xml?accountIdentifier=myapp01%26editionCode=SILVER
    
    
## Documentation and Support
We created this for our own testing so it hasn't been extensively road tested or documented. If you start using it and have any questions just file an issue and we'll get back to you.

### Supported Variables
 URL Param  | AppDirect XML Tag | Example URL 
:-----------|:------------|:------------:
 email      |``<creator><email>`` | <http://appdirectbin.herokuapp.com/subscriptions/order.xml?email=john@example.com> |     
 editionCode|``<payload><order><editionCode>`` |<http://appdirectbin.herokuapp.com/subscriptions/order.xml?editionCode=PREMIUM> |    
 accountIdentifier |``<payload><account><accountIdentifier>`` | <http://appdirectbin.herokuapp.com/subscriptions/change.xml?accountIdentifier=myusername101> |     
 accountStatus  |``<payload><account><accountStatus>`` | <http://appdirectbin.herokuapp.com/subscriptions/notice.xml?accountStatus=FREE_TRIAL_EXPIRED> |      
 flag       | ``<flag>``|     <http://appdirectbin.herokuapp.com/subscriptions/order.xml?flag=false> |    
 noticeType |``<payload><notice><type>`` |    <http://appdirectbin.herokuapp.com/subscriptions/change.xml?noticeType=REACTIVATED> | 

## License
MIT