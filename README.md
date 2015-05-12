# Application Title Goes Here
<!-- If you'd like to use a logo instead uncomment this code and remove the text above this line

  ![Logo](URL to logo img file goes here)

-->

By [Author name](author URL goes here).

[![Code Climate](Code Climate Badge IMG URL goes here)](Code Climate URL goes here)

## Description
**Application Name Here** description can be listed here.

## Installation

Add it to your Gemfile:

```ruby
gem 'my_example_gem'
```

Run the following command to install it:

```console
bundle install
```

Run the generator:

```console
rails generate my_example_gem:install
```


## Usage

Usage explanation goes here

```C++
static void transfer(int fd)
{
	int ret;
	uint8_t tx[] = {
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0x40, 0x00, 0x00, 0x00, 0x00, 0x95,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xDE, 0xAD, 0xBE, 0xEF, 0xBA, 0xAD,
		0xF0, 0x0D,
	};
	uint8_t rx[ARRAY_SIZE(tx)] = {0, };
	struct spi_ioc_transfer tr = {
		.tx_buf = (unsigned long)tx,
		.rx_buf = (unsigned long)rx,
		.len = ARRAY_SIZE(tx),
		.delay_usecs = delay,
		.speed_hz = speed,
		.bits_per_word = bits,
	};

	ret = ioctl(fd, SPI_IOC_MESSAGE(1), &tr);
	if (ret < 1)
		pabort("can't send spi message");

	for (ret = 0; ret < ARRAY_SIZE(tx); ret++) {
		if (!(ret % 6))
			puts("");
		printf("%.2X ", rx[ret]);
	}
	puts("");
}
```


## Configuration

This block of text should explain how to configure your application:

`rails generate my_example_gem:install`


## Information

Screenshots of your application below:

![Screenshot 1](http://placekitten.com/400/300)

![Screenshot 2](http://placekitten.com/400/300)


### Known Issues

If you discover any bugs, feel free to create an issue on GitHub fork and
send us a pull request.

[Issues List](Github Issues List URL goes here).

## Authors

* Your Name (Your Github URL goes here)
* Additional Author's name (Their Github URL goes here)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

Your Licensing Information goes here. Example: MIT/X11.
