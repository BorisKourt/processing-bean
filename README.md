## Download

This git repository will work as a processing sketch folder. Simply clone it into your `~\Documents\Processing\` directory as `processing_bean`. i.e. `git clone git@github.com:BorisKourt/processing-bean.git processing_bean`

If you would rather download a zipped archive of these files, just follow [this link](https://github.com/BorisKourt/processing-bean/archive/master.zip). Note that you will need to rename the unzipped folder to processing_bean, or Processing wont recognize it as a valid sketch.

## Dependencies

This library depends on the oscP5 library. In the Processing IDE go to `Sketch -> Import Library -> Add Library` and search for `osc`. 

That is all that you need to set up. 

## Running

[OSC]() communication with the Light Blue Beans is handled via the Connection class. To run with default settings just make sure that you have: `Connection osc = new Connection();` at the top of your file. (already added in this sketch) 

## Features

Currently up to ten different numbers can be read from a Bean at any one time. An example of how to retrieve and use these values is provided in the `processing_bean.pde` file. 

```
device.get(1); // Will give you the value in the first slot.
```

You can have as many Beans connected at a time as you want. Each one is stored and handled separately via the `Connection` class. Simply iterate over the `osc.devices` array to get access to each Bean individually. 

