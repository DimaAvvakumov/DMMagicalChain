# DMMagicalChain
Category for MagicalRecord for queue save requests

## Introduction

I really love the MagicalRecord library! And Tony Arnold (https://github.com/tonyarnold) is my hero.

But... Oh, this "but" :(

Sometimes you need garanty that two save block will be executed step by step. Not concurency!

In Magical Record library i not found suggestions for this, so i introduce MagicalChain.

## Install

**Via cocoapods**

1. Add into your Podfile file: 

```
pod 'DMMagicalChain', :git => 'https://github.com/DimaAvvakumov/DMMagicalChain.git'
```

2. Import header file

```objectiv-c
#import <DMMagicalChain/MagicalRecord+MagicalChain.h>
```

**Copy files**

1. Simple drag and drop DMMagicalChain category files into your project
2. Add header file 

```objectiv-c
#import "MagicalRecord+MagicalChain.h"
```

## Usage

Replace regular methods **mr_saveWithBlock** with new:

```objectiv-c
    [MagicalRecord chain_saveWithBlock:^(NSManagedObjectContext *localContext) {
        // do saves
    }];
```


