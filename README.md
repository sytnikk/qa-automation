It's a base course for QA Automation engineers.

# Learning plan

## Environment Setup

1. Terminal basics: navigation, file operations, essential commands
2. Node.js, npm/npx, nvm: installation and usage
3. Git basics: clone, branch, commit, push, pull request, merge conflicts

## JavaScript Basics

4. JS Basics: syntax, variables, data types, operators
5. Conditions, loops, functions, callback and closure
6. Arrays and objects, destructuring, Spread/Rest, Map, Set
7. OOP Basics in JS: classes, inheritance, prototypes
8. Asynchrony: Event Loop, promises, async/await, fetch API

## TypeScript Basics

9. Types, interfaces, enums, generics (basics)
10. tsconfig.json, compiling, strict mode
11. Practical usage: typing test helpers, page objects, API responses

## Code Quality and Debugging

12. Prettier, ESLint, Husky (pre-commit hooks)
13. Chrome DevTools: working with DOM, Network, Console, Cookies
14. Setting up tests in Cypress and Playwright

## Test Design for Automation

15. Testing pyramid: unit, integration, E2E — what to automate and what not to
16. Smoke, regression, E2E strategies for automation
17. Selector strategy: `data-testid` vs CSS vs XPath — when to use which

## Cypress

18. Creating and running tests, basic configuration
19. CSS selectors, `data-testid`, locators, POM (Page Object Model)
20. Actions and assertions, custom commands
21. CLI, environment variables, reports (Allure, html)
22. API testing in Cypress: cy.request, intercept, fixtures
23. Test data management: fixtures, faker, setup/teardown hooks

## Playwright

24. Test creation and configuration (TypeScript)
25. Built-in locators: getByRole, getByText, getByTestId, getByLabel
26. Actions, assertions, screenshot and visual testing
27. Codegen, POM, component testing
28. CLI, environment variables, debugging (Inspector, Trace Viewer)
29. API testing in Playwright: mocking, intercept, APIRequestContext
30. Test data management: fixtures, faker, setup/teardown hooks

## API Testing

31. REST API: request and response structure, statuses, versioning
32. Postman & Newman (overview)
33. Jest/Vitest + Axios for API testing
34. Advanced configurations, faker, test data factories
35. GitHub Actions for running API tests

## Reporting and Integration

36. Allure Report: setup, annotations, severity, steps, attachments
37. Screenshots and video on test failure (Cypress & Playwright)
38. Integration with test management tools (Jira, TestRail, Qase)

## Infrastructure and CI/CD

39. CI/CD Basics: GitHub Actions pipelines
40. Docker: images, containers, Docker Compose, Cypress/Playwright images
41. Parallel test execution: Playwright sharding, Cypress parallelization
42. Flaky tests: detection, retries, stabilization strategies
43. Automation of test execution in CI/CD

## Final Capstone Project

44. Set up a full test automation project for a real web application
45. Write E2E, API, and visual tests using Playwright or Cypress
46. Configure Allure reporting with screenshots and video
47. Build a complete CI/CD pipeline with GitHub Actions and Docker
48. Code review and presentation of results
