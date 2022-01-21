# Pre-work - *Tip Calculator*

**Tip Calculator** is a tip calculator application for iOS.

Submitted by: **Ngan Ho**

Time spent: **3** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **additional** features are implemented:

- [x] User can adjust the tip percentages by sliding on the slider and the tip percentage is updated accordingly
- [x] User can adjust the number of people by sliding on the slider and see the amount each person has to pay 

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://im2.ezgif.com/tmp/ezgif-2-0e43a6f986.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [ezgif](http://www.ezgif.com).

## Notes

- Initial problems lied in connecting and updating the UI with values on the slider
- Solved by creating another swift file called "TipCalculator.swift" and calculateTip class in the file then passing computations in the class to the ViewController file
- Future implementations: a feature which changes the currency based on the location and rounded result boxes

## License

    Copyright [2022] [Meliora Ho]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
