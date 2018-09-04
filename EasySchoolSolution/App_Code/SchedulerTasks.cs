using FluentScheduler;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

public class SchedulerTasks : Registry
{
    public SchedulerTasks(string path)
    {
        //https://github.com/jgeurts/FluentScheduler

        Schedule(() =>
        {
            Array.ForEach(Directory.GetFiles(path), File.Delete);

        }).ToRunEvery(2).Days();


        //}).ToRunEvery(1).Days().At(21, 15);
        //// Schedule an ITask to run at an interval
        //Schedule<MyTask>().ToRunNow().AndEvery(2).Seconds();

        //// Schedule a simple task to run at a specific time
        //Schedule(() => Console.WriteLine("Timed Task - Will run every day at 9:15pm: " + DateTime.Now)).ToRunEvery(1).Days().At(21, 15);

        //// Schedule a more complex action to run immediately and on an monthly interval
        //Schedule(() =>
        //{
        //    Console.WriteLine("Complex Action Task Starts: " + DateTime.Now);
        //    Thread.Sleep(1000);
        //    Console.WriteLine("Complex Action Task Ends: " + DateTime.Now);
        //}).ToRunNow().AndEvery(1).Months().OnTheFirst(DayOfWeek.Monday).At(3, 0);
    }
  



}