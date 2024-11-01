---
title: "Contribute"
menu: ["main", "toolbar"]
---

# Contributing

Transportr is developed entirely by volunteers who like what they are doing.
Contributions should be fun.
They are both encouraged and appreciated.

There are many possible ways to contribute
and for most of them you don't need to know how to program.
Have a look at the options below and just get started! :)

## Tell the world!

The easiest way to contribute to Transportr is to tell everybody about it.
You can post about it on social media
or even better show your friends and family that it exists
and how to use it.

The more users Transportr has,
the more developers it will attract
and the better it will become.

Another way to help is to rate it in
[Google Play](https://play.google.com/store/apps/details?id=de.grobox.liberario&utm_source=website)
and if you have a little more time also write a short review about it.

## Finding and Reporting Bugs

Every software has bugs.
So does Transportr.
If you ever find it to behave in a way you would not expect it to,
please have a look at the list of [open](https://github.com/grote/Transportr/issues)
and [closed](https://github.com/grote/Transportr/issues?q=is%3Aissue+is%3Aclosed) issues
to see if it already has been reported.

If the bug you have found is not reported already,
please [create a new issue](https://github.com/grote/Transportr/issues/new)
and describe what exactly you did to produce the faulty behavior.
Screenshots are always welcome to illustrate your description.

## Testing Beta Releases

If you feel adventurous,
you can test new versions of Transportr before they are released to the general public.
These are made available via a special software repository for **[F-Droid](https://f-droid.org/)**.
So please install F-Droid first
and then follow these [instructions for adding the repository](http://grobox.de/fdroid/) to it.
If you installed Transportr via the official F-Droid repository,
you will need to uninstall it
before you can install the one from the testing repository,
because they are signed with different keys.
Please note that you will lose all saved data when you uninstall Transportr.

If you are getting Transportr from **Google Play**,
you can [join the beta program there](https://play.google.com/apps/testing/de.grobox.liberario).

## Design and Graphics {#design}

Transportr should look pretty.
People with design skills are encouraged to contribute those
and help making Transportr look even better.

### Transport Network Logos

Each transport network has its own logo.
For some transport networks Transportr still doesn't have a logo,
but shows a placeholder instead.

In the past, Transportr was using raster graphics in PNG format.
Now, we are only accepting vector graphics
and suggest to start with creating an SVG file for the logo.
SVG files are collected in [/artwork/networks](https://github.com/grote/Transportr/tree/master/artwork/networks).
They further need to be converted into the Android vector format
and must be placed in [/res/drawable](https://github.com/grote/Transportr/tree/master/app/src/main/res/drawable).
There is tools on the internet that allow you to do this:
[svg2android](https://inloop.github.io/svg2android/) or
[SvgToVectorDrawableConverter](https://a-student.github.io/SvgToVectorDrawableConverter.Web/)

The name of the file should always be `network_X_logo.xml`
where `X` is the short ID of the network in Transportr in lower case.
Here is an [example of Italy (it)](https://github.com/grote/Transportr/blob/98a16af1d83e58c0801de08ad58e5b7f166b2902/app/src/main/res/drawable/network_it_logo.xml).

Ideally, you send in logo graphics with a Pull Request in Github.
See [Working with the Source code](#sourcecode) for more information.
Alternatively, you can [create a new issue in GitHub](https://github.com/grote/Transportr/issues/new)
and just drag and drop the graphics in there.

Since Transportr offers a dark and a light theme,
transparent backgrounds usually do not work for the logo.
Please try the logo on black and white backgrounds first.
If it does not work, just use a white background.

## Translating Into Your Language

Translating Transportr is very easy.
Just sign up for an account at [Transifex](https://www.transifex.com).
After you are logged in,
go to the [Transportr translation project](https://www.transifex.com/projects/p/transportr/).
There you can click the "Request language" button if your language does not exist,
or if you want to improve existing translations, apply for the respective language team.

What you translate there will then be included in the next release of Transportr.

Please use the "Create Issue" feature of Transifex only if absolutely necessary.
If you think that the original text needs to be changed,
you can edit [this file](https://github.com/grote/Transportr/blob/master/res/values/strings.xml)
and submit a pull request.

## Adding Support For More Regions {#add_region}

Ideally, Transportr will support the whole world some day.
To achieve this, we rely on you to add support for more public transport networks.
Transportr uses the [public transport enabler](https://github.com/schildbach/public-transport-enabler/) library
to access transport data.
This library is the place where you need to add new transport networks.
This way not only Transportr will benefit from your work,
but also other apps using this library.

You can check whether the system you want to add is based on
[HAFAS](http://www.hacon.de/hafas-en) or
[EFA](http://efa.de).
Support for these systems is already in the public transport enabler,
so it is probably easy to add your area.

### Adding it to Transportr

The first step is to get support for the area into the public transport enabler.
Here's two examples from the past:
[Ontario](https://github.com/schildbach/public-transport-enabler/pull/70/files)
and [South-West of France](https://github.com/schildbach/public-transport-enabler/pull/55/files).

Pull requests to this library are only accepted if they meet the highest quality standards.
For this reason, some people have started a [staging repository](https://gitlab.com/opentransitmap/public-transport-enabler)
for public transport enabler.
If your pull request does not get merged quickly,
you can ask for it to be included in the staging repository.
Once it landed there, it can already be used in Transportr.

After your pull request has been accepted,
you can move on to adding the last final bit to Transportr.
Here's one example:
[Hungary](https://github.com/grote/Transportr/pull/451/files).
Once this pull request has been accepted as well,
your area will be included in the next Transportr release.

## Working with the Source Code

If you want to start working on Transportr's code
and if you haven't done already,
you should [familiarize yourself with Android development](https://developer.android.com/training/basics/firstapp/index.html)
and [set up a development environment](https://developer.android.com/sdk/index.html).

The next step is to clone the [source code repository](https://github.com/grote/Transportr).
More [information about building from source](https://github.com/grote/Transportr#building-from-source)
is available on GitHub.

If you want to do more than fixing bugs,
please create an issue for the feature you want to work on _before_ doing any major work,
so that other developers know about your plans, can coordinate, prevent duplicated work
and discuss the best approach for your undertaking.

Missing features are documented in the [issue tracker](https://github.com/grote/Transportr/labels/enhancement%20%F0%9F%8F%97%EF%B8%8F).
Feel free to look there for ideas or to add your own.

There is also [a list of beginner tasks](https://github.com/grote/Transportr/labels/beginner%20job%20%F0%9F%94%B0)
for you to get started easily.

## Free Software (Open Source)

This app is [Free Software](https://fsfe.org/freesoftware).
It means that you are free to use, study, share and improve it.
Its source code is public and can be inspected by everyone to make sure it only really does what it is supposed to do.
This app respects your privacy and your freedom.

{{< figure
    src="/img/gplv3.png"
    alt="GNU GPLv3"
    class="right" >}}

Legally, you are allowed to redistribute and/or modify it under the terms of the
[GNU General Public License](https://www.gnu.org/licenses/gpl.html) as
published by the Free Software Foundation,
either version 3 of the License, or (at your option) any later version.
