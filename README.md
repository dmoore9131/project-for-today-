iOS Debugging Challenge — SwiftDebugChallenge

This repository contains an iOS SwiftUI application designed as a multi-step debugging challenge. The goal is to identify and fix various issues across the app while learning key iOS development concepts and best practices.

Task 0 — Familiarize with the Codebase

Before starting the challenge, carefully review the entire codebase. Understanding the project structure, key components, and workflows is crucial. Take time to explore the screens, services, view models, and entities to get a solid overview.

Task 1 — Debug and Optimize the Task Management App

You’ll tackle debugging and optimization for the main app features, which include:

Projects Tab: A searchable project list, detailed project views, and associated work item details.

Analytics Tab: A dashboard showing key performance metrics, detailed analyses, and recent project summaries.

Your mission here is to identify and fix all UI bugs, memory leaks, and any potential crash scenarios. Ensure that the existing features remain fully functional and improve app stability and performance where possible.

Task 2 — Fix Concurrency Issues in Reminder Service

This task focuses on the DefaultReminderService, which fetches reminders using three different concurrency paradigms:

Callback-based (fetchReminders)

Combine (remindersPublisher)

Swift Concurrency (fetchRemindersAsync)

Your job is to fix the implementations so they correctly fetch three pages of reminders in parallel, returning exactly 12 unique reminders in total. All corresponding tests must pass. Remember to stick to each method’s designated concurrency style without modifying protected code.

Task 3 — Resolve Login Screen Bug

To complete the challenge, switch the app’s initial screen to the login screen. Then, find and fix a single bug that prevents successful login. Once fixed, tapping the login button should navigate you to the next part of the challenge.

Guidelines and Restrictions

Maintain clean, readable, and well-documented Swift code.

Use only official Swift and SwiftUI documentation and standard IDE tools.

Do not use any external libraries or AI coding assistants.

Avoid modifying files or code sections marked as “DO NOT MODIFY.”

Follow best practices for debugging, concurrency, and UI development.

Success Criteria Summary

All UI bugs, crashes, and memory leaks fixed in Task 1.

Parallel fetching in all three concurrency methods works correctly, passing all tests in Task 2.

Login bug fixed so the app proceeds correctly in Task 3.

Full functionality preserved and code quality improved throughout.

Good luck! This challenge is a great way to sharpen your iOS debugging and Swift concurrency skills while working on a practical, feature-rich app.
