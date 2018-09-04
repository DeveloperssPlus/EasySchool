using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for track
/// </summary>
public class track
{
    public track()
    {
        //
        // TODO: Add constructor logic here
        //

    }

    /*
   
    public override int SaveChanges()
    {
        try
        {
            var modifiedEntities = ChangeTracker.Entries().ToList();

            var now = DateTime.Now;

            foreach (var change in modifiedEntities)
            {

                var entityName11 = (change.Entity.GetType().Name);

                var entityName = entityName11.Split('_').FirstOrDefault();

                if (change.State == EntityState.Added)
                {

                    foreach (var prop in change.CurrentValues.PropertyNames)
                    {
                        string currentValue = "";
                        if (change.CurrentValues[prop] != null)
                            currentValue = change.CurrentValues[prop].ToString();

                        var log = new ChangeLog()
                        {
                            operation = "add",
                            DateChanged = now,
                            EntityName = entityName,
                            NewValue = currentValue,
                            //  PrimaryKeyValue = GetPrimaryKeyValue(),
                            PropertyName = prop,
                            userId = (Guid)Membership.GetUser().ProviderUserKey
                        };

                        ChangeLogs.Add(log);
                    }
                }
                else
                 if (change.State == EntityState.Deleted)
                {
                    var log = new ChangeLog();
                    log.EntityName = entityName;
                    log.operation = "delete";
                    log.PrimaryKeyValue = GetPrimaryKeyValue(change).ToString();
                    log.DateChanged = now;
                    log.userId = (Guid)Membership.GetUser().ProviderUserKey;

                    ChangeLogs.Add(log);

                }
                else
                 if (change.State == EntityState.Modified)
                {
                    foreach (var prop in change.CurrentValues.PropertyNames)
                    {
                        string originalValue = null;
                        if (change.OriginalValues[prop] != null)
                            originalValue = change.OriginalValues[prop].ToString();

                        string currentValue = null;
                        if (change.CurrentValues[prop] != null)
                            currentValue = change.CurrentValues[prop].ToString();

                        if (originalValue != currentValue)
                        {
                            ChangeLog log = new ChangeLog()
                            {
                                EntityName = entityName,
                                PrimaryKeyValue = GetPrimaryKeyValue(change).ToString(),
                                PropertyName = prop,
                                OldValue = originalValue,
                                NewValue = currentValue,
                                DateChanged = now,
                                userId = (Guid)Membership.GetUser().ProviderUserKey,
                                operation = "modify"

                            };
                            ChangeLogs.Add(log);
                        }
                    }
                             }

            }
            return base.SaveChanges();

        }
        catch (DbEntityValidationException e)
        {
            foreach (var eve in e.EntityValidationErrors)
            {

                var mm = eve.Entry.Entity.GetType().Name;
                var ss = eve.Entry.State;

                Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                eve.Entry.Entity.GetType().Name, eve.Entry.State);

                foreach (var ve in eve.ValidationErrors)
                {
                    Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                        ve.PropertyName, ve.ErrorMessage);
                }
            }
            throw;
        }
    }

    object GetPrimaryKeyValue(DbEntityEntry entry)
    {
        var objectStateEntry = ((IObjectContextAdapter)this).ObjectContext.ObjectStateManager.GetObjectStateEntry(entry.Entity);
        return objectStateEntry.EntityKey.EntityKeyValues[0].Value;
    }
    */
}