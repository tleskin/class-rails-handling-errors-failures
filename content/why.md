#### Why

* Rails handles some basic errors, like 404 and 500.
* However, if you want to make your app more resilient, you should handle your own errors.
* You can rescue routing errors, and active record errors giving you more flexibility.
* To test this, you need a development environment that resembles production, but gives you the safety net to experiment.