# My First Post-Mortem

  

![](https://lh3.googleusercontent.com/mVGSsaEjFxMc0AhraV1b_5gsnLn941gz6HFLksdqTjRxk5kO_a7QnEyJsWJn3jaiL7CAfro0magoZCNGX-UWGLKRgGLLDp1f8vcQ6jx2NHlDg6O-OUPM6etWUR2q841ANKn1onF_vRhtMgxchn1OKfs)

>The only system that needed no post-mortem


Any software system can and most likely will eventually fail. That failure can come from a wide range of possible factors like bugs, traffic spikes, security issues, hardware failures, human error, natural disasters and lots more.

Failing is normal and it is actually a great opportunity to learn and improve. Any great Software Engineer must learn from their mistakes to ensure that they never happen again. It is fine to fail. However, failing twice because of the same issue is not acceptable.

A post mortem is a tool widely used to record failures for the purpose of informing others of the details of the cause as well as measures taken to fix the failure.


## Issue Summary

Between the hours of 01:30 am and 02:00 am (GMT +2) on January 6th, a problem occurred with the system affecting 30% of users.

This was triggered by a new change made to the system at 00:57 am. The change was meant to fix an issue with the content displayed on the homepage but it inadvertently created an even bigger problem which caused the front-end of the project not to be rendered.

The change that led to this error was made to the base model for all the models used in the system. A bug in this code caused the entire front-end to fail.
  

## Timeline

01:30 am — The issue was detected by multiple users. Some users raised tickets for the problem they faced.

01:33 am — The customer service representative was notified of the issue as it was urgent. He informed the team lead of the situation of the system.

01:35 am — The team lead checked the list of most recent changes in an effort to find out what could have caused the problem, working on the assumption that it was a result of a recent change he made in the system.

01:42 am — The product manager contacted the team lead to find out what the status of the investigation was, as he had also been informed about the problem by a user.  

![](https://lh3.googleusercontent.com/H1eSQtSOFSKKxjEj589IsVAJUAJiKhRIbHCLyZEr52HaskAkx2uFtJwGBNucaFrw35KnSUkFgimKlhU4JV4QaypDTHt5rZnAzN7UAStMCbCKcspJGIMmLJ-7ziSk5iWnWcuVBB4aqMieRwdEpNW9nn4)

01:45 am — The team lead reached out to members of the team to ask them individually what their most recent changes were.

01:56 am — The team lead and his team were able to discover a bug in a change made to the base model.

01:58 am — The bug was fixed.

02:00 am — The system was back to running as it was expected.
  

## Root Cause and Resolution

There were some updates expected to be made to the system by the project manager. In the process of this, some minor problems were noticed by the team lead, one of which was an issue with the content rendered to the front-end.

These issues were assigned to different team members to resolve by the team lead. Somewhere along the line, a bug was added to the code rendering the front-end inactive as the change that was made to the base model ended up causing errors in multiple parts of the system.

After the team lead was notified, he reached out to members of the team to ask them individually what their most recent changes were, when they made those changes and what the intended effects were.

![](https://lh3.googleusercontent.com/xPR-z9RQ2eDkjdGEvXl6lpGLeyPpoBbX6h59P_nqeRsyGh1YxSnrfGQs0iWzJfI59BZHeOkjB0n1YISpBwfDElI2NxXI7JwX8HSz8BSIBqp2f7Igw7HBFisW9nb5Rmw0E5t75SxtfrynOkcuQ3osh8U)

Eventually, they were able to find the specific line of code causing the problem.

After making the required changes, some additional tests were run to ensure that there was no other hidden issue. Then the system was back online.

  
## Corrective and preventive measures

After taking a more detailed look at the system, here are some of the things requiring improvement include:

-   Approval process for changes should be more stringent to prevent another issue like this    
-   Changes should not be made directly to the system in use but rather, in a sandbox before being made to the system itself.
-   Employ monitoring tools for the system to stay ahead of any errors that occur.

    
## Conclusion

It is important to note that post-mortems are not avenues to focus on who went wrong or who fixed them but rather to inform on what went wrong and what was done to fix them.

Finally, I leave you with this thought…

![](https://lh4.googleusercontent.com/RUzNty0tVQIl2tIdoRJDXIdBkkRrdxXE8hiMT8seRJkq8zkDVfuNFmD_ND-8eISNQXK8b8-zAvyE7S1oda3P5PfDcRIBKGf2NhtuSK9XGfjs5jbxJbchoEelrP3LzASZoOb6vMtizfLgKFbG9NrBPjk)


You can also check out the full article on Medium by clicking [here](https://medium.com/@lumi_codes/my-first-post-mortem-16f1cbf4e0f9).
