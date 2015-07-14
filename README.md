## Download

This git repository will work as a Processing sketch folder. Simply clone it into your `~\Documents\Processing\` directory as `processing_bean`. i.e.

```sh
git clone git@github.com:BorisKourt/processing-bean.git processing_bean
```

If you would rather download a zipped archive of these files, just follow [this link](https://github.com/BorisKourt/processing-bean/archive/master.zip). Note that you will need to rename the unzipped folder to processing_bean, or Processing wont recognize it as a valid sketch.

## Dependencies

I would recommend that processing beta is installed, it has some nice editing features (version 3.0a10 or above.)

This library depends on the oscP5 library. In the Processing IDE go to `Sketch -> Import Library -> Add Library` and search for `osc`. 

That is all that you need to run the sketch.

## Running

[OSC](http://opensoundcontrol.org/introduction-osc) communication with the Light Blue Beans is handled via the Connection class. To run with default settings just make sure that you have: `Connection osc = new Connection();` at the top of your file. (already added in this sketch) 

## Features

You can have as many Beans connected at a time as you want. Each one is stored and handled separately via the `Connection` class. Simply iterate over the `osc.devices` array to get access to each Bean individually. 

```pde
if( osc.devices != null ) { // If there are any Beans
    for (Device bean : osc.devices) {
    	// Do something here for each Bean
    	println(bean.get(1)); // i.e. Get the first value from it.
    }
  }
```

Currently up to ten different numbers can be read from a Bean at any one time. An example of how to retrieve and use these values is provided in the `processing_bean.pde` file. 

```pde
device.get(1); // Will give you the value in the first slot.
```


