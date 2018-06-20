FROM gustavorozolin/gradle-oracle-jdk-8

MAINTAINER Gustavo Rozolin <gustavorozolin@gmail.com>

ENV ANDROID_HOME /opt/android-sdk-linux
RUN mkdir -p ${ANDROID_HOME}

RUN cd /opt \
    && wget -q https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -O android-sdk-tools.zip \
    && unzip -q android-sdk-tools.zip -d ${ANDROID_HOME} \
    && rm android-sdk-tools.zip
  
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools

RUN yes | sdkmanager --licenses

RUN sdkmanager "tools" \ 
               "platform-tools" \ 
               "extra-android-support" \
               "extra-android-m2repository" \
               "extra-google-google_play_services" \
               "extra-google-m2repository" \
               "extra-google-analytics_sdk_v2"

RUN yes | sdkmanager "platforms;android-27"
RUN yes | sdkmanager "build-tools;27.0.3" 
RUN yes | sdkmanager "build-tools;27.0.2"
RUN yes | sdkmanager "build-tools;27.0.1"
RUN yes | sdkmanager "platforms;android-26"
RUN yes | sdkmanager "build-tools;26.0.2"
RUN yes | sdkmanager "build-tools;26.0.1"
RUN yes | sdkmanager "build-tools;26.0.0"
RUN yes | sdkmanager "platforms;android-25"
RUN yes | sdkmanager "build-tools;25.0.3"
RUN yes | sdkmanager "build-tools;25.0.2"
RUN yes | sdkmanager "build-tools;25.0.1"
RUN yes | sdkmanager "build-tools;25.0.0"
RUN yes | sdkmanager "platforms;android-24"
RUN yes | sdkmanager "build-tools;24.0.3"
RUN yes | sdkmanager "platforms;android-23"
RUN yes | sdkmanager "build-tools;23.0.3"
RUN yes | sdkmanager "build-tools;23.0.2"
RUN yes | sdkmanager "build-tools;23.0.1"
RUN yes | sdkmanager "build-tools;23.0.0"
RUN yes | sdkmanager "platforms;android-22"
RUN yes | sdkmanager "build-tools;22.0.1"
RUN yes | sdkmanager "build-tools;22.0.0"
RUN yes | sdkmanager "platforms;android-21"
RUN yes | sdkmanager "build-tools;21.1.2"
RUN yes | sdkmanager "build-tools;21.1.1"
RUN yes | sdkmanager "build-tools;21.1"
RUN yes | sdkmanager "build-tools;21.0.2"
RUN yes | sdkmanager "build-tools;21.0.1"
RUN yes | sdkmanager "build-tools;21.0.0"
RUN yes | sdkmanager "platforms;android-20"
RUN yes | sdkmanager "build-tools;20.0.0"
RUN yes | sdkmanager "platforms;android-19"
RUN yes | sdkmanager "build-tools;19.1.0"
RUN yes | sdkmanager "build-tools;19.0.3"
RUN yes | sdkmanager "build-tools;19.0.2"
RUN yes | sdkmanager "build-tools;19.0.1"
RUN yes | sdkmanager "build-tools;19"
RUN yes | sdkmanager "platforms;android-18"
RUN yes | sdkmanager "build-tools;18.1.1"
RUN yes | sdkmanager "build-tools;18.1.0"
RUN yes | sdkmanager "build-tools;18.0.1" 
RUN yes | sdkmanager "extras;android;m2repository" 
RUN yes | sdkmanager "extras;google;m2repository" 
RUN yes | sdkmanager "extras;google;google_play_services" 
RUN yes | sdkmanager "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.2" 
RUN yes | sdkmanager "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.1" 
RUN yes | sdkmanager "add-ons;addon-google_apis-google-23" 
RUN yes | sdkmanager "add-ons;addon-google_apis-google-22" 
RUN yes | sdkmanager "add-ons;addon-google_apis-google-21"
