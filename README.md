![EcoGo Logo|320x271, 50%](https://github.com/jahnavi2k/EcoGo/blob/main/assets/images/logo-bg1.png)

# EcoGo

- [Project summary](#project-summary)
  - [The issue we are hoping to solve](#the-issue-we-are-hoping-to-solve)
  - [How our technology solution can help](#how-our-technology-solution-can-help)
  - [Our idea](#our-idea)
- [Technology implementation](#technology-implementation)
  - [Core Platforms and Service(s) Used](#core-platforms-and-services-used)
  - [Solution architecture](#solution-architecture)
- [Presentation materials](#presentation-materials)
  - [Demo Video](#demo-video)
  - [Design Documentation](#design-documentation)
  - [Project Development](#project-development)
- [The Set-Up](#the-set-up)
  - [How to run the project](#how-to-run-the-project)
  - [Live demo](#live-demo)

## Project summary

### The issue we are hoping to solve

**_Have you ever wondered what impact your daily household products can have on the environment?_**

Seemingly unharmful products may contain ingredients that might be toxic to the environment. As awareness about this issue grows, individuals may seek to make informed choices but lack the time or reliable sources to conduct thorough analyses of the impact of their consumption patterns on the environment. Consequently, there exists a pressing challenge to facilitate timely, credible, and convenient access to information that empowers individuals to make informed and environmentally responsible decisions.

### How our technology solution can help

Our app primarily aims to contribute towards the **12th United Nations Sustainable Development Goal** which is to _ensure sustainable consumption and production patterns_. We are making it possible for consumers to make informed choices, which in turn ensures sustainable consumption.

### Our idea

We have come up with a solution to provide people with an enabling platform to assess and understand the risks their choices pose to the environment and thus make informed and sustainable decisions to prevent any kind of damage to the environment.
Our app is designed to help individuals make informed and environmentally responsible decisions by providing them with easy access to information about the impact of ingredients in household products on the environment.

## Technology implementation

### Core Platforms and Service(s) used

- [Azure Functions](https://learn.microsoft.com/en-us/azure/azure-functions/functions-overview?pivots=programming-language-csharp) - We selected Azure Function for scalability and efficiency, Azure Functions facilitate a serverless architecture in EcoGo. This approach optimizes resource usage, ensuring adaptability to varying workloads and enabling cost-effective sustainability.

- [Azure Application Insights](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview) - We chose this for real-time analytics and monitoring, Azure Application Insights is integral to EcoGo's reliability. Proactive issue identification enhances performance, providing a responsive user experience and aligning with our commitment to continuous improvement for sustainability.

- [Flutter](https://flutter.dev/) - We chose to use Flutter to develop our app because it allowed us to build high-performance, cross-platform mobile applications with a single codebase. This helped us to reduce development time and costs, while also providing a seamless user experience across different platforms.

- [FireBase](https://firebase.google.com/) - We used FireBase as our backend as a service (BaaS) platform. We leveraged Firebase Realtime Database for real-time data synchronization. These services allowed us to rapidly build and deploy our application while also ensuring scalability and real-time data synchronization.

- [TensorFlow](https://www.tensorflow.org/) - We have developed a tensorflow model for prediction of the toxicity levels of ingredients in the product. For the recommedndation system as well, we have utilized Tensorflow to implement an unsupervised clustering model.

### Solution architecture

Diagram and step-by-step description of the flow of our solution:

![Architecture](https://github.com/OjashGupta/EcoGo_ImagineCup/blob/main/assets/architecture_diagram.JPG)

1. The user can download the app to their phone to choose the product category and query any product through a quick barcode scan or a textual search to know its ecological impact.
2. The app connects to the cloud and performs an API call to fetch the entered product, it then performs a database query to search for the product. If product details are not found in Firebase, an API call to the trained model deployed on Google Cloud is made and the results are stored in Firestore Database.
3. Once the results are fetched, the user will be directed to the analysis screen that will display the overall, aquatic, and environmental impact of the product.
4. The user can browse through the individual tabs to learn more about the impact of each of the ingredients.
5. The user can also browse through alternatives for the searched product in the Similar Products tab and thereby, may choose to buy a product that has a lesser impact on the environment.

## Presentation materials

### [Demo Video](https://youtu.be/KayB0PPTCZg)

### [Business Proposal](https://drive.google.com/file/d/1yOpn5SDBtp7PzrQQJw7PKjK3osO_MS-_/view?usp=sharing)

### [Software Instructions](https://drive.google.com/file/d/1l7JkNkBcT0ancYiR0wQLV9Fy9BT4E6b9/view?usp=sharing)

### Project Development

The project currently does the following things.

- Search Products via Text or Barcode
- Fetches the product's overall impact on the environment
- Ingredient Wise Analysis
- Recommends alternatives with their environmental scores

In the future we plan to:

- Extend our app to include various types of products over various categories
- Improve the performance of the trained model by training over various datasets

## The Set-Up

### How to run the project

1. Clone the repository:

```
$ https://github.com/OjashGupta/EcoGo_ImagineCup.git
```

2. Open the project in your favorite IDE. We recommend using Android Studio, which has built-in support for Flutter development.

3. Install the Flutter SDK by following the official documentation. Make sure to install the necessary dependencies based on your operating system.

4. Install the project dependencies by running the following command:

```
$ flutter pub get
```

5. Run the app on your preferred device or emulator using the following command:

```
$ flutter run
```

**NOTE**: Please note that this repository contains hidden files that may contain API keys or other sensitive information. These files are not tracked by Git and should not be committed to the repository. If you clone or fork this repository, please make sure to properly secure these files and do not share them publicly.

### Live demo

You can find a running system to test at [APK FILE (Android Ver.)](https://drive.google.com/file/d/1qyNVM6NUdIJMio3AeWe3-Zhfpqf9n5y5/view?usp=sharing). Download the file in your phone to install the app.

You can also watch our [Demo Video](https://youtu.be/KayB0PPTCZg) for a detailed walkthrough of our app.

---
