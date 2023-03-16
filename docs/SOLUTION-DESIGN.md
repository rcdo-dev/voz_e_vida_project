# Solution design | VeV

This document contains the solution design for Voz é Vida - VeV.

## Overview

The system comprises two subsystems:
* A multiplatform mobile app;
* A web platform.

The mobile app is mainly used by board users, but can be used by caregivers to manage boards as well. The web platform is focused on caregivers, allowing them to manage and share boards, access usage data, among others.

## UI wireframes

...

## Tech stack

The choice of a tech stack for the project is based on the following requirements:
* The project usage may be low for some time, before it gets noticed by board users and caregivers;
* The availability of human resources (and their skills) @ NewGo to support the project;
* As it is an open-source project, it must have a reduced development and maintainability cost.

Considering these requirements, we chose to adopt a Javascript-based ecossystem for the back and web front, and Flutter for the mobile front (mainly due to the availability of professionals @ NewGo):
* Flutter for the mobile app;
* React for the web frontend;
* NodeJS FaaS for the backend. We will try to be as cloud-agnostic as possible, but our initial focus will be on AWS;
* Serverless aligned NoSQL database (e.g. DynamoDB).

## High-level architecture

