.class Lcom/localytics/android/InAppManager;
.super Lcom/localytics/android/BaseMarketingManager;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InAppManager$12;,
        Lcom/localytics/android/InAppManager$ManifestHolder;,
        Lcom/localytics/android/InAppManager$FrequencyCappingFilter;
    }
.end annotation


# static fields
.field private static final AUGMENTED_BLACKOUT_TIMES_RULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final AUGMENTED_BLACKOUT_WEEKDAYS_RULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_SDF:Ljava/text/SimpleDateFormat;

.field private static final DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_FREQUENCY_CAPPING_RULE_CAMPAIGN_ID:I = -0x1

.field private static final GLOBAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

.field private static final INDIVIDUAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

.field private static final PROJECTION_IN_APP_RULE_RECORD:[Ljava/lang/String;

.field private static final TIME_SDF:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mCreativeManager:Lcom/localytics/android/CreativeManager;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mIsMidDisplayingInApp:Z

.field private mMarketingHandler:Lcom/localytics/android/MarketingHandler;

.field private mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "display_frequencies"

    aput-object v2, v1, v4

    sput-object v1, Lcom/localytics/android/InAppManager;->GLOBAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

    .line 50
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "max_display_count"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ignore_global"

    aput-object v2, v1, v5

    sput-object v1, Lcom/localytics/android/InAppManager;->INDIVIDUAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

    .line 52
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "version"

    aput-object v2, v1, v5

    sput-object v1, Lcom/localytics/android/InAppManager;->PROJECTION_IN_APP_RULE_RECORD:[Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/localytics/android/InAppManager;->TIME_SDF:Ljava/text/SimpleDateFormat;

    .line 58
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/localytics/android/InAppManager;->DATE_SDF:Ljava/text/SimpleDateFormat;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_TIMES_RULE:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "rule":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "start"

    const-string/jumbo v2, "00:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v1, "end"

    const-string/jumbo v2, "23:59"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_TIMES_RULE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_WEEKDAYS_RULE:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    sput-object v1, Lcom/localytics/android/InAppManager;->DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;

    const-string/jumbo v2, "max_display_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/localytics/android/InAppManager;->DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;

    const-string/jumbo v2, "ignore_global"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/localytics/android/InAppManager;->TIME_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 75
    sget-object v1, Lcom/localytics/android/InAppManager;->DATE_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .registers 4
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "marketingHandler"    # Lcom/localytics/android/MarketingHandler;

    .prologue
    .line 93
    new-instance v0, Lcom/localytics/android/CreativeManager;

    invoke-direct {v0, p1, p2}, Lcom/localytics/android/CreativeManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/localytics/android/InAppManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/CreativeManager;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/CreativeManager;)V
    .registers 5
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "marketingHandler"    # Lcom/localytics/android/MarketingHandler;
    .param p3, "creativeManager"    # Lcom/localytics/android/CreativeManager;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseMarketingManager;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/InAppManager;->mIsMidDisplayingInApp:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    .line 100
    iput-object p2, p0, Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 101
    iput-object p3, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    .line 102
    return-void
.end method

.method private _bindRuleToEvents(JLjava/util/List;)V
    .registers 15
    .param p1, "ruleId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 487
    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "marketing_ruleevent"

    const-string/jumbo v5, "%s = ?"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "rule_id_ref"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 490
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    .local v0, "eventName":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 493
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "event_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string/jumbo v3, "rule_id_ref"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "marketing_ruleevent"

    invoke-virtual {v3, v4, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_24

    .line 497
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_4e
    return-void
.end method

.method private _controlGroupMessages(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1069
    .local v0, "controlGroupMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/localytics/android/MarketingMessage;

    .line 1071
    .local v2, "msg":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v3, "control_group"

    invoke-static {v2, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 1072
    if-lez v3, :cond_9

    .line 1074
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1078
    .end local v2    # "msg":Lcom/localytics/android/MarketingMessage;
    :cond_22
    return-object v0
.end method

.method private _deleteInAppCreative(I)V
    .registers 6
    .param p1, "ruleId"    # I

    .prologue
    .line 360
    int-to-long v2, p1

    iget-object v1, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v2, v3, v1}, Lcom/localytics/android/CreativeManager;->getInAppUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "basePath":Ljava/lang/String;
    if-eqz v0, :cond_2d

    .line 363
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 366
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 369
    :cond_2d
    return-void
.end method

.method private _deleteInAppRuleEventsAndConditions(I)V
    .registers 14
    .param p1, "ruleId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 347
    int-to-long v6, p1

    invoke-direct {p0, v6, v7}, Lcom/localytics/android/InAppManager;->_getConditionIdFromRuleId(J)[J

    move-result-object v0

    .line 348
    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_9
    if-ge v1, v4, :cond_2e

    aget-wide v2, v0, v1

    .line 350
    .local v2, "conditionId":J
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v6, "marketing_condition_values"

    const-string/jumbo v7, "%s = ?"

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "condition_id_ref"

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 352
    .end local v2    # "conditionId":J
    :cond_2e
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v6, "marketing_conditions"

    const-string/jumbo v7, "%s = ?"

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "rule_id_ref"

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v6, "marketing_ruleevent"

    const-string/jumbo v7, "%s = ?"

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "rule_id_ref"

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private _destroyLocalInAppMessage(Lcom/localytics/android/MarketingMessage;)V
    .registers 11
    .param p1, "inAppMessage"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 326
    :try_start_0
    const-string/jumbo v3, "campaign_id"

    invoke-virtual {p1, v3}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 327
    .local v0, "campaignId":I
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getRuleIdFromCampaignId(I)I

    move-result v2

    .line 330
    .local v2, "ruleId":I
    invoke-direct {p0, v2}, Lcom/localytics/android/InAppManager;->_deleteInAppRuleEventsAndConditions(I)V

    .line 333
    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "marketing_rules"

    const-string/jumbo v5, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, v2}, Lcom/localytics/android/InAppManager;->_deleteInAppCreative(I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 342
    .end local v0    # "campaignId":I
    .end local v2    # "ruleId":I
    :goto_39
    return-void

    .line 338
    :catch_3a
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Localytics library threw an uncaught exception"

    invoke-static {v3, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method private _getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1549
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private _getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "inputs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1555
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1556
    .local v0, "campaignIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 1558
    const/4 v1, 0x0

    .line 1561
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_c
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v2, v2, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1563
    :goto_14
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1565
    const-string/jumbo v2, "campaign_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2d

    goto :goto_14

    .line 1570
    :catchall_2d
    move-exception v2

    if-eqz v1, :cond_33

    .line 1572
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_33
    throw v2

    .line 1570
    :cond_34
    if-eqz v1, :cond_39

    .line 1572
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1577
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_39
    return-object v0
.end method

.method private _getConditionIdFromRuleId(J)[J
    .registers 14
    .param p1, "ruleId"    # J

    .prologue
    .line 1926
    const/4 v7, 0x0

    .line 1929
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "marketing_conditions"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v10, "rule_id_ref"

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1930
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [J

    .line 1932
    .local v6, "conditionIds":[J
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 1933
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_36
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1935
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v6, v9
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_54

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_36

    .line 1940
    :cond_4e
    if-eqz v7, :cond_53

    .line 1942
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1946
    :cond_53
    return-object v6

    .line 1940
    .end local v6    # "conditionIds":[J
    .end local v9    # "i":I
    :catchall_54
    move-exception v0

    if-eqz v7, :cond_5a

    .line 1942
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1943
    :cond_5a
    throw v0
.end method

.method private _getInAppConditionValues(I)Ljava/util/Vector;
    .registers 13
    .param p1, "conditionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1957
    const/4 v8, 0x0

    .line 1959
    .local v8, "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1962
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "marketing_condition_values"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v10, "condition_id_ref"

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_53

    move-result-object v6

    move-object v9, v8

    .line 1963
    .end local v8    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .local v9, "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_30
    :try_start_30
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1965
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1967
    .local v7, "value":Ljava/lang/String;
    if-nez v9, :cond_5d

    .line 1969
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_5a

    .line 1972
    .end local v9    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_48
    :try_start_48
    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_53

    move-object v9, v8

    .line 1973
    .end local v8    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v9    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    goto :goto_30

    .line 1977
    .end local v7    # "value":Ljava/lang/String;
    :cond_4d
    if-eqz v6, :cond_52

    .line 1979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1984
    :cond_52
    return-object v9

    .line 1977
    .end local v9    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catchall_53
    move-exception v0

    :goto_54
    if-eqz v6, :cond_59

    .line 1979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1980
    :cond_59
    throw v0

    .line 1977
    .end local v8    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v9    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catchall_5a
    move-exception v0

    move-object v8, v9

    .end local v9    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    goto :goto_54

    .end local v8    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v7    # "value":Ljava/lang/String;
    .restart local v9    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_5d
    move-object v8, v9

    .end local v9    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    goto :goto_48
.end method

.method private _getInAppConditions(I)Ljava/util/Vector;
    .registers 17
    .param p1, "ruleId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/localytics/android/MarketingCondition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1851
    const/4 v9, 0x0

    .line 1854
    .local v9, "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    const/4 v8, 0x0

    .line 1857
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "marketing_conditions"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v14, "rule_id_ref"

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_77

    move-result-object v8

    move-object v10, v9

    .line 1858
    .end local v9    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .local v10, "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    :goto_28
    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1860
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1861
    .local v7, "conditionId":I
    const-string/jumbo v0, "attribute_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1862
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v0, "operator"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1863
    .local v12, "operator":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/localytics/android/InAppManager;->_getInAppConditionValues(I)Ljava/util/Vector;

    move-result-object v13

    .line 1865
    .local v13, "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v10, :cond_81

    .line 1867
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V
    :try_end_5a
    .catchall {:try_start_28 .. :try_end_5a} :catchall_7e

    .line 1870
    .end local v10    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .restart local v9    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    :goto_5a
    :try_start_5a
    new-instance v6, Lcom/localytics/android/MarketingCondition;

    invoke-direct {v6, v11, v12, v13}, Lcom/localytics/android/MarketingCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 1871
    .local v6, "condition":Lcom/localytics/android/MarketingCondition;
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/localytics/android/MarketingCondition;->setPackageName(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_5a .. :try_end_6f} :catchall_77

    move-object v10, v9

    .line 1873
    .end local v9    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .restart local v10    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    goto :goto_28

    .line 1877
    .end local v6    # "condition":Lcom/localytics/android/MarketingCondition;
    .end local v7    # "conditionId":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "operator":Ljava/lang/String;
    .end local v13    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_71
    if-eqz v8, :cond_76

    .line 1879
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1884
    :cond_76
    return-object v10

    .line 1877
    .end local v10    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .restart local v9    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    :catchall_77
    move-exception v0

    :goto_78
    if-eqz v8, :cond_7d

    .line 1879
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1880
    :cond_7d
    throw v0

    .line 1877
    .end local v9    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .restart local v10    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    :catchall_7e
    move-exception v0

    move-object v9, v10

    .end local v10    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .restart local v9    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    goto :goto_78

    .end local v9    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .restart local v7    # "conditionId":I
    .restart local v10    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "operator":Ljava/lang/String;
    .restart local v13    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_81
    move-object v9, v10

    .end local v10    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    .restart local v9    # "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    goto :goto_5a
.end method

.method private _getInAppMessageMaps(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1168
    .local v3, "inAppMessageMaps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/localytics/android/MarketingMessage;>;"
    const/4 v0, 0x0

    .line 1171
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_6
    iget-object v6, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, "now":Ljava/lang/String;
    const-string/jumbo v6, "SELECT * FROM %s WHERE %s IN (SELECT %s FROM %s WHERE %s = ?) AND %s > ?;"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "marketing_rules"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "rule_id_ref"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "marketing_ruleevent"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "event_name"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "expiration"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1180
    .local v5, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v6, v6, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_53
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1f6

    .line 1184
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1186
    new-instance v2, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v2}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 1188
    .local v2, "inAppMessageMap":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v6, "_id"

    const-string/jumbo v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string/jumbo v6, "campaign_id"

    const-string/jumbo v7, "campaign_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string/jumbo v6, "expiration"

    const-string/jumbo v7, "expiration"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string/jumbo v6, "display_seconds"

    const-string/jumbo v7, "display_seconds"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string/jumbo v6, "display_session"

    const-string/jumbo v7, "display_session"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string/jumbo v6, "version"

    const-string/jumbo v7, "version"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string/jumbo v6, "phone_location"

    const-string/jumbo v7, "phone_location"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string/jumbo v6, "phone_size_width"

    const-string/jumbo v7, "phone_size_width"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string/jumbo v6, "phone_size_height"

    const-string/jumbo v7, "phone_size_height"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string/jumbo v6, "tablet_location"

    const-string/jumbo v7, "tablet_location"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string/jumbo v6, "tablet_size_width"

    const-string/jumbo v7, "tablet_size_width"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string/jumbo v6, "tablet_size_height"

    const-string/jumbo v7, "tablet_size_height"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string/jumbo v6, "time_to_display"

    const-string/jumbo v7, "time_to_display"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string/jumbo v6, "internet_required"

    const-string/jumbo v7, "internet_required"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string/jumbo v6, "ab_test"

    const-string/jumbo v7, "ab_test"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-string/jumbo v6, "rule_name_non_unique"

    const-string/jumbo v7, "rule_name_non_unique"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-string/jumbo v6, "location"

    const-string/jumbo v7, "location"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string/jumbo v6, "devices"

    const-string/jumbo v7, "devices"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-string/jumbo v6, "control_group"

    const-string/jumbo v7, "control_group"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-string/jumbo v6, "schema_version"

    const-string/jumbo v7, "schema_version"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v6, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/localytics/android/InAppManager;->updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V

    .line 1211
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1f2
    .catchall {:try_start_6 .. :try_end_1f2} :catchall_1fc

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_53

    .line 1216
    .end local v2    # "inAppMessageMap":Lcom/localytics/android/MarketingMessage;
    :cond_1f6
    if-eqz v0, :cond_1fb

    .line 1218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1222
    :cond_1fb
    return-object v3

    .line 1216
    .end local v1    # "i":I
    .end local v4    # "now":Ljava/lang/String;
    .end local v5    # "sql":Ljava/lang/String;
    :catchall_1fc
    move-exception v6

    if-eqz v0, :cond_202

    .line 1218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_202
    throw v6
.end method

.method private _getRuleIdFromCampaignId(I)I
    .registers 11
    .param p1, "campaignId"    # I

    .prologue
    .line 1895
    const/4 v7, 0x0

    .line 1896
    .local v7, "ruleId":I
    const/4 v6, 0x0

    .line 1899
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "marketing_rules"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "campaign_id"

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1900
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1902
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_46

    move-result v7

    .line 1907
    :cond_40
    if-eqz v6, :cond_45

    .line 1909
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1913
    :cond_45
    return v7

    .line 1907
    :catchall_46
    move-exception v0

    if-eqz v6, :cond_4c

    .line 1909
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1910
    :cond_4c
    throw v0
.end method

.method private _isConnectingToInternet()Z
    .registers 8

    .prologue
    .line 1791
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1792
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2b

    .line 1794
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1795
    .local v3, "info":[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2b

    .line 1797
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1a
    if-ge v2, v4, :cond_2b

    aget-object v5, v0, v2

    .line 1799
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_28

    .line 1801
    const/4 v5, 0x1

    .line 1806
    .end local v0    # "arr$":[Landroid/net/NetworkInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    .end local v4    # "len$":I
    :goto_27
    return v5

    .line 1797
    .restart local v0    # "arr$":[Landroid/net/NetworkInfo;
    .restart local v2    # "i$":I
    .restart local v3    # "info":[Landroid/net/NetworkInfo;
    .restart local v4    # "len$":I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1806
    .end local v0    # "arr$":[Landroid/net/NetworkInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    .end local v4    # "len$":I
    :cond_2b
    const/4 v5, 0x0

    goto :goto_27
.end method

.method private _isInAppMessageSatisfiedConditions(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Z
    .registers 9
    .param p1, "inAppMessage"    # Lcom/localytics/android/MarketingMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1818
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 1821
    .local v4, "satisfied":Z
    const-string/jumbo v5, "campaign_id"

    invoke-virtual {p1, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1822
    .local v0, "campaignId":I
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getRuleIdFromCampaignId(I)I

    move-result v3

    .line 1825
    .local v3, "ruleId":I
    invoke-direct {p0, v3}, Lcom/localytics/android/InAppManager;->_getInAppConditions(I)Ljava/util/Vector;

    move-result-object v2

    .line 1828
    .local v2, "inAppConditions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
    if-eqz v2, :cond_2f

    .line 1830
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/localytics/android/MarketingCondition;

    .line 1832
    invoke-virtual {v5, p2}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByAttributes(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1834
    const/4 v4, 0x0

    .line 1840
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2f
    return v4
.end method

.method private _parseInAppMessage(ILcom/localytics/android/MarketingMessage;Ljava/util/Map;)Landroid/content/ContentValues;
    .registers 12
    .param p1, "ruleId"    # I
    .param p2, "inAppMessage"    # Lcom/localytics/android/MarketingMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x1

    .line 399
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 401
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "_id"

    if-lez p1, :cond_15a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_f
    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string/jumbo v5, "campaign_id"

    const-string/jumbo v7, "campaign_id"

    invoke-static {p2, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    const-string/jumbo v5, "expiration"

    const-string/jumbo v7, "expiration"

    invoke-static {p2, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    const-string/jumbo v5, "display_seconds"

    const-string/jumbo v7, "display_seconds"

    invoke-static {p2, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string/jumbo v5, "display_session"

    const-string/jumbo v7, "display_session"

    invoke-static {p2, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string/jumbo v5, "version"

    const-string/jumbo v7, "version"

    invoke-static {p2, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string/jumbo v5, "phone_location"

    const-string/jumbo v7, "phone_location"

    invoke-static {p2, v7}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v5, "phone_size"

    invoke-static {p2, v5}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 409
    .local v0, "phoneSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "phone_size_width"

    const-string/jumbo v7, "width"

    invoke-static {v0, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const-string/jumbo v5, "phone_size_height"

    const-string/jumbo v7, "height"

    invoke-static {v0, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string/jumbo v5, "tablet_size"

    invoke-static {p2, v5}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 412
    .local v3, "tabletSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "tablet_location"

    const-string/jumbo v7, "tablet_location"

    invoke-static {p2, v7}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v5, "tablet_size_width"

    const-string/jumbo v7, "width"

    invoke-static {v3, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string/jumbo v5, "tablet_size_height"

    const-string/jumbo v7, "height"

    invoke-static {v3, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string/jumbo v5, "time_to_display"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string/jumbo v7, "internet_required"

    const-string/jumbo v5, "internet_required"

    invoke-static {p2, v5}, Lcom/localytics/android/JsonHelper;->getSafeBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15d

    move v5, v6

    :goto_ea
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string/jumbo v5, "ab_test"

    const-string/jumbo v6, "ab"

    invoke-static {p2, v6}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string/jumbo v5, "rule_name"

    invoke-static {p2, v5}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "ruleName":Ljava/lang/String;
    const-string/jumbo v5, "rule_name_non_unique"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v5, "rule_name"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v5, "location"

    const-string/jumbo v6, "location"

    invoke-static {p2, v6}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v5, "devices"

    const-string/jumbo v6, "devices"

    invoke-static {p2, v6}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string/jumbo v5, "control_group"

    const-string/jumbo v6, "control_group"

    invoke-static {p2, v6}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    if-eqz p3, :cond_159

    .line 426
    const-string/jumbo v5, "schema_version"

    invoke-static {p3, v5}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, "schemaVersion":I
    if-lez v2, :cond_159

    .line 429
    const-string/jumbo v5, "schema_version"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    .end local v2    # "schemaVersion":I
    :cond_159
    return-object v4

    .line 401
    .end local v0    # "phoneSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "ruleName":Ljava/lang/String;
    .end local v3    # "tabletSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_15a
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 416
    .restart local v0    # "phoneSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "tabletSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_15d
    const/4 v5, 0x0

    goto :goto_ea
.end method

.method private _saveInAppConditions(JLjava/util/List;)V
    .registers 19
    .param p1, "ruleId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p3, "conditions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p3, :cond_3

    .line 474
    :cond_2
    return-void

    .line 444
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/localytics/android/InAppManager;->_getConditionIdFromRuleId(J)[J

    move-result-object v0

    .line 445
    .local v0, "arr$":[J
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_9
    if-ge v5, v6, :cond_32

    aget-wide v2, v0, v5

    .line 447
    .local v2, "conditionId":J
    iget-object v8, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v9, "marketing_condition_values"

    const-string/jumbo v10, "%s = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "condition_id_ref"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 449
    .end local v2    # "conditionId":J
    :cond_32
    iget-object v8, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v9, "marketing_conditions"

    const-string/jumbo v10, "%s = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "rule_id_ref"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 454
    check-cast v1, Ljava/util/List;

    .line 458
    .local v1, "condition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 459
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "attribute_name"

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string/jumbo v9, "operator"

    const/4 v8, 0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string/jumbo v8, "rule_id_ref"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 462
    iget-object v8, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v9, "marketing_conditions"

    invoke-virtual {v8, v9, v7}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 466
    .restart local v2    # "conditionId":J
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_58

    .line 468
    new-instance v7, Landroid/content/ContentValues;

    .end local v7    # "values":Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "value"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/localytics/android/JsonHelper;->getSafeStringFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v8, "condition_id_ref"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 471
    iget-object v8, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v9, "marketing_condition_values"

    invoke-virtual {v8, v9, v7}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_97
.end method

.method private _tagAmpActionEventForControlGroup(Lcom/localytics/android/MarketingMessage;)V
    .registers 9
    .param p1, "marketingMessage"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 1098
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1100
    .local v2, "impressionAttributes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "campaign_id"

    invoke-virtual {p1, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "campaignId":Ljava/lang/String;
    const-string/jumbo v5, "rule_name_non_unique"

    invoke-virtual {p1, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, "ruleName":Ljava/lang/String;
    const-string/jumbo v5, "schema_version"

    invoke-virtual {p1, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1103
    .local v4, "schemaVersion":Ljava/lang/String;
    const-string/jumbo v5, "ab_test"

    invoke-virtual {p1, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1104
    .local v0, "ab":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1106
    const-string/jumbo v5, "ampAB"

    invoke-virtual {v2, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    :cond_3b
    const-string/jumbo v5, "ampAction"

    const-string/jumbo v6, "control"

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "Control"

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string/jumbo v5, "ampCampaignId"

    invoke-virtual {v2, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string/jumbo v5, "ampCampaign"

    invoke-virtual {v2, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string/jumbo v5, "Schema Version - Client"

    const-string/jumbo v6, "5"

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    const-string/jumbo v5, "Schema Version - Server"

    invoke-virtual {v2, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string/jumbo v6, "ampView"

    invoke-interface {v5, v6, v2}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1116
    return-void
.end method

.method private _timeStringToSeconds(Ljava/lang/String;)I
    .registers 5
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 889
    :try_start_0
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "components":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_23

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 894
    .end local v0    # "components":[Ljava/lang/String;
    :goto_22
    return v1

    :catch_23
    move-exception v1

    const/4 v1, -0x1

    goto :goto_22
.end method

.method static synthetic access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/InAppManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/localytics/android/InAppManager;->mIsMidDisplayingInApp:Z

    return v0
.end method

.method static synthetic access$202(Lcom/localytics/android/InAppManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/localytics/android/InAppManager;->mIsMidDisplayingInApp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/localytics/android/InAppManager;Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;
    .registers 5
    .param p0, "x0"    # Lcom/localytics/android/InAppManager;
    .param p1, "x1"    # Lcom/localytics/android/MarketingMessage;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/InAppManager;->getInAppCampaignFromMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)Lcom/localytics/android/InAppMessagesAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppManager;
    .param p1, "x1"    # Lcom/localytics/android/InAppMessagesAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/localytics/android/MarketingMessage;
    .param p1, "x1"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/localytics/android/InAppManager;->updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V

    return-void
.end method

.method private getInAppCampaignFromMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;
    .registers 10
    .param p1, "message"    # Lcom/localytics/android/MarketingMessage;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/InAppCampaign;"
        }
    .end annotation

    .prologue
    .line 2327
    .local p3, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2328
    .local v0, "webViewAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "html_url"

    const-string/jumbo v1, "html_url"

    invoke-virtual {p1, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    const-string/jumbo v2, "base_path"

    const-string/jumbo v1, "base_path"

    invoke-virtual {p1, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    const-string/jumbo v1, "display_width"

    const-string/jumbo v2, "display_width"

    invoke-virtual {p1, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    const-string/jumbo v1, "display_height"

    const-string/jumbo v2, "display_height"

    invoke-virtual {p1, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    new-instance v2, Lcom/localytics/android/InAppCampaign$Builder;

    invoke-direct {v2}, Lcom/localytics/android/InAppCampaign$Builder;-><init>()V

    const-string/jumbo v1, "campaign_id"

    invoke-virtual {p1, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/localytics/android/InAppCampaign$Builder;->setCampaignId(J)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string/jumbo v1, "rule_name_non_unique"

    invoke-virtual {p1, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/localytics/android/InAppCampaign$Builder;->setRuleName(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/localytics/android/InAppCampaign$Builder;->setVersion(J)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string/jumbo v1, "schema_version"

    invoke-virtual {p1, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/localytics/android/InAppCampaign$Builder;->setSchemaVersion(J)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/localytics/android/InAppCampaign$Builder;->setDisplayLocation(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string/jumbo v1, "ab_test"

    invoke-virtual {p1, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/localytics/android/InAppCampaign$Builder;->setAbTest(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/localytics/android/InAppCampaign$Builder;->setEventAttributes(Ljava/util/Map;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/localytics/android/InAppCampaign$Builder;->setWebViewAttributes(Ljava/util/Map;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/localytics/android/InAppCampaign$Builder;->build()Lcom/localytics/android/InAppCampaign;

    move-result-object v1

    return-object v1
.end method

.method private static getInAppRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;
    .registers 3
    .param p0, "marketingMessage"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 1227
    const-string/jumbo v1, "devices"

    invoke-static {p0, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "devices":Ljava/lang/String;
    if-eqz v0, :cond_1a

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1230
    const-string/jumbo v1, "tablet_location"

    invoke-static {p0, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1232
    :goto_19
    return-object v1

    :cond_1a
    const-string/jumbo v1, "phone_location"

    invoke-static {p0, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method

.method private static updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V
    .registers 15
    .param p0, "message"    # Lcom/localytics/android/MarketingMessage;
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "includeDimensions"    # Z

    .prologue
    .line 1240
    const-string/jumbo v7, "_id"

    invoke-virtual {p0, v7}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1242
    .local v6, "ruleId":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/localytics/android/CreativeManager;->getInAppLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1243
    .local v4, "localHtmlURL":Ljava/lang/String;
    invoke-static {p0}, Lcom/localytics/android/InAppManager;->getInAppRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v5

    .line 1244
    .local v5, "remoteFileLocation":Ljava/lang/String;
    int-to-long v8, v6

    const-string/jumbo v7, ".zip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v8, v9, v7, p1}, Lcom/localytics/android/CreativeManager;->getInAppLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v3

    .line 1245
    .local v3, "localFileLocation":Ljava/lang/String;
    const-string/jumbo v7, "creative_url"

    invoke-virtual {p0, v7, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const-string/jumbo v7, "html_url"

    invoke-virtual {p0, v7, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const-string/jumbo v7, "base_path"

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/localytics/android/CreativeManager;->getInAppUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    const-string/jumbo v7, "zip_name"

    const-string/jumbo v8, "amp_rule_%d.zip"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const-string/jumbo v7, "local_file_location"

    invoke-virtual {p0, v7, v3}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const-string/jumbo v7, "download_url"

    invoke-virtual {p0, v7, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    if-eqz p2, :cond_b0

    .line 1256
    const-string/jumbo v7, "devices"

    invoke-virtual {p0, v7}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1258
    .local v0, "devices":Ljava/lang/String;
    const-string/jumbo v7, "tablet"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 1260
    const-string/jumbo v7, "tablet_size_width"

    invoke-virtual {p0, v7}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1261
    .local v2, "displayWidth":I
    const-string/jumbo v7, "tablet_size_height"

    invoke-virtual {p0, v7}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1274
    .local v1, "displayHeight":I
    :goto_9a
    const-string/jumbo v7, "display_width"

    int-to-float v8, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-string/jumbo v7, "display_height"

    int-to-float v8, v1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .end local v0    # "devices":Ljava/lang/String;
    .end local v1    # "displayHeight":I
    .end local v2    # "displayWidth":I
    :cond_b0
    return-void

    .line 1263
    .restart local v0    # "devices":Ljava/lang/String;
    :cond_b1
    const-string/jumbo v7, "both"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1270
    const-string/jumbo v7, "phone_size_width"

    invoke-virtual {p0, v7}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1271
    .restart local v2    # "displayWidth":I
    const-string/jumbo v7, "phone_size_height"

    invoke-virtual {p0, v7}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "displayHeight":I
    goto :goto_9a
.end method


# virtual methods
.method _additionalFCDatesAndTimesRulesValidation(Ljava/util/List;Ljava/text/SimpleDateFormat;)Z
    .registers 8
    .param p2, "formatter"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/text/SimpleDateFormat;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_3b

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 629
    .local v2, "rule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_12
    const-string/jumbo v4, "start"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 630
    .local v3, "startTime":Ljava/util/Date;
    const-string/jumbo v4, "end"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 631
    .local v0, "endTime":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 633
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_38} :catch_38

    .line 638
    .end local v0    # "endTime":Ljava/util/Date;
    .end local v3    # "startTime":Ljava/util/Date;
    :catch_38
    move-exception v4

    const/4 v4, 0x0

    .line 643
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3a
    return v4

    :cond_3b
    const/4 v4, 0x1

    goto :goto_3a
.end method

.method _additionalFCDisplayFrequencyRulesValidation(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "displayFrequencyRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz p1, :cond_32

    .line 609
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 611
    .local v0, "displayFrequencyRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v2, "days"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_30

    const-string/jumbo v2, "count"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_6

    .line 613
    :cond_30
    const/4 v2, 0x0

    .line 618
    .end local v0    # "displayFrequencyRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_31
    return v2

    :cond_32
    const/4 v2, 0x1

    goto :goto_31
.end method

.method _additionalFCWeekdaysRulesValidation(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "weekdaysRules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 648
    if-eqz p1, :cond_29

    .line 650
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_b

    .line 666
    :cond_a
    :goto_a
    return v2

    .line 656
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 658
    .local v1, "weekday":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_f

    goto :goto_a

    .line 666
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "weekday":Ljava/lang/Integer;
    :cond_29
    const/4 v2, 0x1

    goto :goto_a
.end method

.method _augmentBlackoutRule(Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 793
    .local v0, "augmentedRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "dates"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 794
    .local v1, "hasDates":Z
    const-string/jumbo v4, "weekdays"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 795
    .local v3, "hasWeekdays":Z
    const-string/jumbo v4, "times"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 797
    .local v2, "hasTimes":Z
    if-nez v1, :cond_1e

    if-eqz v3, :cond_2e

    :cond_1e
    if-nez v2, :cond_2e

    .line 799
    const-string/jumbo v4, "times"

    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_TIMES_RULE:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_2d
    :goto_2d
    return-object v0

    .line 801
    :cond_2e
    if-eqz v2, :cond_2d

    if-nez v1, :cond_2d

    if-nez v3, :cond_2d

    .line 803
    const-string/jumbo v4, "weekdays"

    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_WEEKDAYS_RULE:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d
.end method

.method _campaignsSatisfyingConditions(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "inAppMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 1762
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1763
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/localytics/android/MarketingMessage;

    .line 1766
    .local v2, "message":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v3, "internet_required"

    invoke-virtual {v2, v3}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_38

    move v3, v4

    .line 1767
    :goto_26
    if-eqz v3, :cond_2e

    invoke-direct {p0}, Lcom/localytics/android/InAppManager;->_isConnectingToInternet()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1773
    :cond_2e
    invoke-direct {p0, v2, p2}, Lcom/localytics/android/InAppManager;->_isInAppMessageSatisfiedConditions(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1778
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1766
    :cond_38
    const/4 v3, 0x0

    goto :goto_26

    .line 1781
    .end local v2    # "message":Lcom/localytics/android/MarketingMessage;
    :cond_3a
    return-object v0
.end method

.method _checkFrequencyCappingRuleArray(Ljava/util/List;[Ljava/lang/String;)Z
    .registers 11
    .param p2, "subKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rulesList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v7, 0x0

    .line 577
    if-eqz p1, :cond_33

    .line 579
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_b

    move v6, v7

    .line 602
    :goto_a
    return v6

    .line 585
    :cond_b
    array-length v6, p2

    if-lez v6, :cond_33

    .line 587
    move-object v4, p1

    .line 588
    .local v4, "listOfMaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, p2

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_13
    if-ge v2, v3, :cond_33

    aget-object v5, v0, v2

    .line 590
    .local v5, "subKey":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 592
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    move v6, v7

    .line 594
    goto :goto_a

    .line 588
    :cond_2f
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_13

    .line 602
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listOfMaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    .end local v5    # "subKey":Ljava/lang/String;
    :cond_33
    const/4 v6, 0x1

    goto :goto_a
.end method

.method _deleteFrequencyCappingRule(Ljava/lang/Integer;)Z
    .registers 10
    .param p1, "campaignId"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 709
    :try_start_2
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "frequency_capping_rules"

    const-string/jumbo v4, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    .line 714
    :goto_24
    return v0

    :catch_25
    move-exception v0

    move v0, v1

    goto :goto_24
.end method

.method _filterInAppMessagesDisqualifiedByFrequencyCappingRules(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1282
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1283
    .local v1, "eligibleCampaignIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/localytics/android/MarketingMessage;

    .line 1285
    .local v3, "message":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v5, "campaign_id"

    invoke-virtual {v3, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1288
    .end local v3    # "message":Lcom/localytics/android/MarketingMessage;
    :cond_22
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_31

    .line 1290
    sget-object v5, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->MAX_COUNT:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v5, v1}, Lcom/localytics/android/InAppManager;->_getDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1292
    :cond_31
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_40

    .line 1294
    sget-object v5, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->FREQUENCY:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v5, v1}, Lcom/localytics/android/InAppManager;->_getDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1296
    :cond_40
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_4f

    .line 1298
    sget-object v5, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->BLACKOUT:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v5, v1}, Lcom/localytics/android/InAppManager;->_getDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1300
    :cond_4f
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_5e

    .line 1302
    sget-object v5, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->FREQUENCY:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v5, v1}, Lcom/localytics/android/InAppManager;->_getGloballyDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1304
    :cond_5e
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_6d

    .line 1306
    sget-object v5, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->BLACKOUT:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v5, v1}, Lcom/localytics/android/InAppManager;->_getGloballyDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1309
    :cond_6d
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1311
    .local v4, "stillEligibleCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_a3

    .line 1313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7c
    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/localytics/android/MarketingMessage;

    .line 1315
    .restart local v3    # "message":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v5, "campaign_id"

    invoke-virtual {v3, v5}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1316
    .local v0, "campaignId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1318
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 1323
    .end local v0    # "campaignId":I
    .end local v3    # "message":Lcom/localytics/android/MarketingMessage;
    :cond_a3
    return-object v4
.end method

.method _getDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;
    .registers 16
    .param p1, "filter"    # Lcom/localytics/android/InAppManager$FrequencyCappingFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/InAppManager$FrequencyCappingFilter;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "campaignIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v12, 0x3

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1329
    sget-object v4, Lcom/localytics/android/InAppManager$12;->$SwitchMap$com$localytics$android$InAppManager$FrequencyCappingFilter:[I

    invoke-virtual {p1}, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_210

    .line 1417
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_15
    return-object v1

    .line 1332
    :pswitch_16
    const-string/jumbo v4, "SELECT fc.%s FROM %s AS fc JOIN %s AS cd ON fc.%s=cd.%s WHERE cd.%s in (%s) GROUP BY fc.%s HAVING count(*) >= fc.%s;"

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "campaign_id"

    aput-object v6, v5, v8

    const-string/jumbo v6, "frequency_capping_rules"

    aput-object v6, v5, v9

    const-string/jumbo v6, "campaigns_displayed"

    aput-object v6, v5, v10

    const-string/jumbo v6, "campaign_id"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, ","

    invoke-static {v7, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string/jumbo v6, "campaign_id"

    aput-object v6, v5, v11

    const/16 v6, 0x8

    const-string/jumbo v7, "max_display_count"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    goto :goto_15

    .line 1349
    :pswitch_5c
    const-string/jumbo v4, "SELECT DISTINCT fc.%s FROM %s AS fc JOIN %s AS df ON fc.%s=df.%s JOIN %s AS cd ON fc.%s=cd.%s WHERE (cd.%s BETWEEN datetime(\'%s\',\'-\'||df.%s||\' days\') AND datetime(\'%s\')) AND fc.%s in (%s) GROUP BY df.%s HAVING count(cd.%s) >= df.%s;"

    const/16 v5, 0x11

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "campaign_id"

    aput-object v6, v5, v8

    const-string/jumbo v6, "frequency_capping_rules"

    aput-object v6, v5, v9

    const-string/jumbo v6, "frequency_capping_display_frequencies"

    aput-object v6, v5, v10

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string/jumbo v7, "frequency_id"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "campaigns_displayed"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    const-string/jumbo v6, "campaign_id"

    aput-object v6, v5, v11

    const/16 v6, 0x8

    const-string/jumbo v7, "date"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v7}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "days"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v7}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string/jumbo v7, ","

    invoke-static {v7, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string/jumbo v7, "date"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string/jumbo v7, "count"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    goto/16 :goto_15

    .line 1372
    :pswitch_e1
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 1373
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1374
    .local v3, "currentWeekday":I
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v2, v4, v5

    .line 1376
    .local v2, "currentTime":I
    const-string/jumbo v4, "SELECT fc.%s FROM %s AS fc, %s AS d, %s AS t WHERE ((fc.%s=t.%s) AND (fc.%s=d.%s)) AND (d.%s=t.%s) AND (datetime(\'%s\',\'localtime\') BETWEEN d.%s and d.%s) AND (? BETWEEN t.%s AND t.%s) AND fc.%s IN (%s);"

    const/16 v5, 0x11

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "campaign_id"

    aput-object v6, v5, v8

    const-string/jumbo v6, "frequency_capping_rules"

    aput-object v6, v5, v9

    const-string/jumbo v6, "frequency_capping_blackout_dates"

    aput-object v6, v5, v10

    const-string/jumbo v6, "frequency_capping_blackout_times"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "frequency_id"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const-string/jumbo v6, "frequency_id"

    aput-object v6, v5, v11

    const/16 v6, 0x8

    const-string/jumbo v7, "rule_group_id"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string/jumbo v7, "rule_group_id"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v7}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string/jumbo v7, "start"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "end"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string/jumbo v7, "start"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string/jumbo v7, "end"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string/jumbo v7, ","

    invoke-static {v7, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {p0, v4, v5}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 1395
    .local v1, "campaigns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string/jumbo v4, "SELECT fc.%s FROM %s AS fc, %s AS w, %s AS t WHERE ((fc.%s=t.%s) AND (fc.%s=w.%s)) AND (w.%s=t.%s) AND (w.%s=?)  AND (? BETWEEN t.%s AND t.%s) AND fc.%s IN (%s);"

    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "campaign_id"

    aput-object v6, v5, v8

    const-string/jumbo v6, "frequency_capping_rules"

    aput-object v6, v5, v9

    const-string/jumbo v6, "frequency_capping_blackout_weekdays"

    aput-object v6, v5, v10

    const-string/jumbo v6, "frequency_capping_blackout_times"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "frequency_id"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const-string/jumbo v6, "frequency_id"

    aput-object v6, v5, v11

    const/16 v6, 0x8

    const-string/jumbo v7, "rule_group_id"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string/jumbo v7, "rule_group_id"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "day"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string/jumbo v7, "start"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "end"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string/jumbo v7, ","

    invoke-static {v7, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, v4, v5}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_15

    .line 1329
    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_16
        :pswitch_5c
        :pswitch_e1
    .end packed-switch
.end method

.method _getGloballyDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;
    .registers 16
    .param p1, "filter"    # Lcom/localytics/android/InAppManager$FrequencyCappingFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/InAppManager$FrequencyCappingFilter;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1423
    .local p2, "campaignIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v11, -0x1

    .line 1424
    .local v11, "frequencyId":I
    const/4 v10, 0x0

    .line 1427
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "frequency_capping_rules"

    const/4 v2, 0x0

    const-string/jumbo v3, "campaign_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v12, "-1"

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1430
    const-string/jumbo v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_48

    move-result v11

    .line 1435
    :cond_2a
    if-eqz v10, :cond_2f

    .line 1437
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1441
    :cond_2f
    const/4 v0, -0x1

    if-eq v11, v0, :cond_42

    .line 1445
    :try_start_32
    sget-object v0, Lcom/localytics/android/InAppManager$12;->$SwitchMap$com$localytics$android$InAppManager$FrequencyCappingFilter:[I

    invoke-virtual {p1}, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_200

    packed-switch v0, :pswitch_data_208

    .line 1523
    :cond_3d
    if-eqz v10, :cond_42

    .line 1525
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1530
    :cond_42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_47
    :goto_47
    return-object v0

    .line 1435
    :catchall_48
    move-exception v0

    if-eqz v10, :cond_4e

    .line 1437
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v0

    .line 1448
    :pswitch_4f
    :try_start_4f
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "SELECT df.%s FROM %s AS fc JOIN %s AS df ON fc.%s = df.%s JOIN %s AS cd WHERE cd.%s = 0 AND fc.%s = ? AND (cd.%s BETWEEN datetime(\'%s\',\'-\'||df.%s||\' days\') AND datetime(\'%s\')) GROUP BY df.%s HAVING count(cd.%s) >= df.%s;"

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "frequency_capping_rules"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "frequency_capping_display_frequencies"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "frequency_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "campaigns_displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "ignore_global"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "campaign_id"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "days"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "count"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "-1"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1469
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3d

    .line 1471
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_getIgnoresGlobalCampaigns(ZLjava/util/Set;)Ljava/util/Set;
    :try_end_dc
    .catchall {:try_start_4f .. :try_end_dc} :catchall_200

    move-result-object v0

    .line 1523
    if-eqz v10, :cond_47

    .line 1525
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_47

    .line 1476
    :pswitch_e4
    :try_start_e4
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCalendar()Ljava/util/Calendar;

    move-result-object v6

    .line 1477
    .local v6, "calendar":Ljava/util/Calendar;
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 1478
    .local v9, "currentWeekday":I
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xd

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int v8, v0, v1

    .line 1480
    .local v8, "currentTime":I
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "SELECT * FROM %s AS d, %s AS t WHERE ((d.%s=?) AND (t.%s=?)) AND (d.%s=t.%s) AND (datetime(\'%s\',\'localtime\') BETWEEN d.%s and d.%s) AND (? BETWEEN t.%s AND t.%s);"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "frequency_capping_blackout_dates"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "frequency_capping_blackout_times"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "frequency_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "frequency_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "rule_group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "rule_group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "start"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "end"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "start"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "end"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1494
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1495
    .local v7, "count":I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1497
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "SELECT * FROM %s AS w, %s AS t WHERE ((w.%s=?) AND (t.%s=?)) AND (w.%s=t.%s) AND (w.%s=?) AND (? BETWEEN t.%s AND t.%s);"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "frequency_capping_blackout_weekdays"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "frequency_capping_blackout_times"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "frequency_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "frequency_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "rule_group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "rule_group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "day"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "start"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "end"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1511
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v0, v7

    .line 1513
    if-lez v0, :cond_3d

    .line 1515
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_getIgnoresGlobalCampaigns(ZLjava/util/Set;)Ljava/util/Set;
    :try_end_1f8
    .catchall {:try_start_e4 .. :try_end_1f8} :catchall_200

    move-result-object v0

    .line 1523
    if-eqz v10, :cond_47

    .line 1525
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_47

    .line 1523
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v7    # "count":I
    .end local v8    # "currentTime":I
    .end local v9    # "currentWeekday":I
    :catchall_200
    move-exception v0

    if-eqz v10, :cond_206

    .line 1525
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_206
    throw v0

    .line 1445
    nop

    :pswitch_data_208
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_e4
    .end packed-switch
.end method

.method _getIgnoresGlobalCampaigns(ZLjava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "ignoreGlobal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "campaignIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1536
    const-string/jumbo v2, "SELECT %s FROM %s WHERE %s = %s AND %s in (%s);"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "campaign_id"

    aput-object v4, v3, v1

    const-string/jumbo v4, "frequency_capping_rules"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string/jumbo v5, "ignore_global"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    if-eqz p1, :cond_3a

    :goto_1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    const-string/jumbo v1, "campaign_id"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_3a
    move v0, v1

    goto :goto_1b
.end method

.method _getInAppCreativeUrls()Landroid/util/SparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 979
    .local v8, "creativeUrlMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 982
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_6
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "marketing_rules"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "campaign_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "phone_location"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "tablet_location"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "devices"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 989
    :goto_2d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 991
    new-instance v10, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v10}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 992
    .local v10, "marketingMessage":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v0, "campaign_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 993
    .local v6, "campaignId":I
    const-string/jumbo v0, "phone_location"

    const-string/jumbo v1, "phone_location"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string/jumbo v0, "tablet_location"

    const-string/jumbo v1, "tablet_location"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string/jumbo v0, "devices"

    const-string/jumbo v1, "devices"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-static {v10}, Lcom/localytics/android/InAppManager;->getInAppRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v7

    .line 997
    .local v7, "creativeUrl":Ljava/lang/String;
    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_6 .. :try_end_7d} :catchall_7e

    goto :goto_2d

    .line 1002
    .end local v6    # "campaignId":I
    .end local v7    # "creativeUrl":Ljava/lang/String;
    .end local v10    # "marketingMessage":Lcom/localytics/android/MarketingMessage;
    :catchall_7e
    move-exception v0

    if-eqz v9, :cond_84

    .line 1004
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_84
    throw v0

    .line 1002
    :cond_85
    if-eqz v9, :cond_8a

    .line 1004
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1008
    :cond_8a
    return-object v8
.end method

.method _getQualifiedInAppMessageForTrigger(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1121
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1155
    :cond_7
    :goto_7
    return-object v4

    .line 1127
    :cond_8
    const-string/jumbo v5, "open"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1129
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1131
    const-string/jumbo v1, "AMP Loaded"

    .line 1144
    .local v1, "eventName":Ljava/lang/String;
    :goto_1a
    invoke-direct {p0, v1}, Lcom/localytics/android/InAppManager;->_getInAppMessageMaps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1145
    .local v3, "inAppMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4a

    .line 1147
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1148
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1150
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1151
    .local v2, "eventString":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/localytics/android/InAppManager;->_getInAppMessageMaps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1155
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v2    # "eventString":Ljava/lang/String;
    :cond_4a
    invoke-virtual {p0, v3}, Lcom/localytics/android/InAppManager;->_filterInAppMessagesDisqualifiedByFrequencyCappingRules(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_7

    .line 1140
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v3    # "inAppMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :cond_4f
    move-object v1, p1

    .restart local v1    # "eventName":Ljava/lang/String;
    goto :goto_1a
.end method

.method _handleTestCampaigns()Z
    .registers 4

    .prologue
    .line 203
    iget-object v1, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    if-eqz v1, :cond_1c

    .line 205
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    .line 206
    .local v0, "adapter":Lcom/localytics/android/InAppMessagesAdapter;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/localytics/android/InAppManager$2;

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/InAppManager$2;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    .line 223
    const/4 v1, 0x1

    .line 226
    .end local v0    # "adapter":Lcom/localytics/android/InAppMessagesAdapter;
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method _inAppMessageTrigger(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager;->_getQualifiedInAppMessageForTrigger(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1023
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    if-eqz v0, :cond_1e

    .line 1025
    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_campaignsSatisfyingConditions(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 1027
    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_messagesReadyToDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1028
    .local v1, "readyToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1f

    .line 1030
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/localytics/android/MarketingMessage;

    invoke-virtual {p0, v3, p2}, Lcom/localytics/android/InAppManager;->_triggerMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V

    .line 1049
    .end local v1    # "readyToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :cond_1e
    :goto_1e
    return-void

    .line 1032
    .restart local v1    # "readyToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 1034
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1035
    .local v2, "withoutCreatives":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1036
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 1038
    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    new-instance v4, Lcom/localytics/android/InAppManager$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/localytics/android/InAppManager$3;-><init>(Lcom/localytics/android/InAppManager;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3, v2, v4}, Lcom/localytics/android/CreativeManager;->priorityDownloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    goto :goto_1e
.end method

.method _manifestProcessingAllowed()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v1, "marketing_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_19

    :cond_f
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v0}, Lcom/localytics/android/CreativeManager;->hasPendingDownloads()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected _messagesReadyToDisplay(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-direct {p0, p1}, Lcom/localytics/android/InAppManager;->_controlGroupMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1055
    .local v0, "controlGroupMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1056
    .local v1, "nonControlGroupMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1058
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v4, v1}, Lcom/localytics/android/CreativeManager;->inAppCampaignsWithDownloadedCreatives(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1060
    .local v3, "withCreatives":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1061
    .local v2, "readyToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    return-object v2
.end method

.method _processMarketingObject(Ljava/util/Map;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v6, "inAppMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    const-string/jumbo v13, "amp"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 143
    .local v7, "inapps":Ljava/lang/Object;
    if-eqz v7, :cond_33

    .line 146
    invoke-static {v7}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONArray;

    invoke-static {v13}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    .line 147
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 149
    .local v10, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v13, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v13, v10}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 154
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v10    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_33
    invoke-virtual {p0, v6}, Lcom/localytics/android/InAppManager;->_removeDeactivatedInAppMessages(Ljava/util/List;)V

    .line 156
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v13}, Lcom/localytics/android/InAppManager;->_validateAndStoreFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v3, "creativesToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-virtual {p0}, Lcom/localytics/android/InAppManager;->_getInAppCreativeUrls()Landroid/util/SparseArray;

    move-result-object v2

    .line 163
    .local v2, "creativeUrls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ba

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/localytics/android/MarketingMessage;

    .line 165
    .local v5, "inApp":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v13, "campaign_id"

    invoke-virtual {v5, v13}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 166
    .local v11, "oldRemoteFileUrl":Ljava/lang/String;
    invoke-static {v5}, Lcom/localytics/android/InAppManager;->getInAppRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, "newRemoteFileUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b8

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b8

    const/4 v8, 0x1

    .line 169
    .local v8, "isNewUrl":Z
    :goto_7d
    move-object/from16 v0, p2

    invoke-virtual {p0, v5, v0, v8}, Lcom/localytics/android/InAppManager;->_saveInAppMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;Z)I

    move-result v12

    .line 170
    .local v12, "ruleId":I
    if-lez v12, :cond_4d

    const-string/jumbo v13, "campaign_id"

    invoke-virtual {v5, v13}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {p0, v5, v13}, Lcom/localytics/android/InAppManager;->_validateAndStoreFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v13

    if-eqz v13, :cond_4d

    .line 172
    if-eqz v8, :cond_4d

    .line 174
    const-string/jumbo v13, "control_group"

    invoke-static {v5, v13}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v13

    .line 175
    if-nez v13, :cond_4d

    .line 177
    new-instance v1, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v1, v5}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    .line 178
    .local v1, "copy":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v13, "_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v13, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v14, 0x0

    invoke-static {v1, v13, v14}, Lcom/localytics/android/InAppManager;->updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V

    .line 180
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 167
    .end local v1    # "copy":Lcom/localytics/android/MarketingMessage;
    .end local v8    # "isNewUrl":Z
    .end local v12    # "ruleId":I
    :cond_b8
    const/4 v8, 0x0

    goto :goto_7d

    .line 186
    .end local v5    # "inApp":Lcom/localytics/android/MarketingMessage;
    .end local v9    # "newRemoteFileUrl":Ljava/lang/String;
    .end local v11    # "oldRemoteFileUrl":Ljava/lang/String;
    :cond_ba
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_d0

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v13

    if-nez v13, :cond_d0

    .line 188
    iget-object v13, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    new-instance v14, Lcom/localytics/android/InAppManager$1;

    invoke-direct {v14, p0}, Lcom/localytics/android/InAppManager$1;-><init>(Lcom/localytics/android/InAppManager;)V

    invoke-virtual {v13, v3, v14}, Lcom/localytics/android/CreativeManager;->downloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$LastDownloadedCallback;)V

    .line 198
    :cond_d0
    iget-object v13, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v13}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 199
    return-void
.end method

.method _removeDeactivatedInAppMessages(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p1, "inAppMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v7, "campaignIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/localytics/android/MarketingMessage;

    .line 912
    .local v10, "inApp":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v0, "campaign_id"

    invoke-static {v10, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 915
    .end local v10    # "inApp":Lcom/localytics/android/MarketingMessage;
    :cond_24
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_deleteFrequencyCappingRule(Ljava/lang/Integer;)Z

    .line 918
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 919
    .local v12, "inAppMessageMaps":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/localytics/android/MarketingMessage;>;"
    const/4 v13, 0x0

    .line 922
    .local v13, "rulesCursor":Landroid/database/Cursor;
    :try_start_32
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "marketing_rules"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 924
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_40
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1c8

    .line 926
    invoke-interface {v13, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 930
    const-string/jumbo v0, "campaign_id"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 931
    .local v6, "campaignId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c4

    .line 936
    new-instance v11, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v11}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 938
    .local v11, "inAppMessageMap":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v0, "_id"

    const-string/jumbo v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string/jumbo v0, "campaign_id"

    const-string/jumbo v1, "campaign_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string/jumbo v0, "expiration"

    const-string/jumbo v1, "expiration"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string/jumbo v0, "display_seconds"

    const-string/jumbo v1, "display_seconds"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string/jumbo v0, "display_session"

    const-string/jumbo v1, "display_session"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string/jumbo v0, "version"

    const-string/jumbo v1, "version"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string/jumbo v0, "phone_location"

    const-string/jumbo v1, "phone_location"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string/jumbo v0, "phone_size_width"

    const-string/jumbo v1, "phone_size_width"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string/jumbo v0, "phone_size_height"

    const-string/jumbo v1, "phone_size_height"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string/jumbo v0, "tablet_location"

    const-string/jumbo v1, "tablet_location"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string/jumbo v0, "tablet_size_width"

    const-string/jumbo v1, "tablet_size_width"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string/jumbo v0, "tablet_size_height"

    const-string/jumbo v1, "tablet_size_height"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string/jumbo v0, "time_to_display"

    const-string/jumbo v1, "time_to_display"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string/jumbo v0, "internet_required"

    const-string/jumbo v1, "internet_required"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string/jumbo v0, "ab_test"

    const-string/jumbo v1, "ab_test"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string/jumbo v0, "rule_name_non_unique"

    const-string/jumbo v1, "rule_name_non_unique"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string/jumbo v0, "location"

    const-string/jumbo v1, "location"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string/jumbo v0, "devices"

    const-string/jumbo v1, "devices"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-virtual {v12, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1c4
    .catchall {:try_start_32 .. :try_end_1c4} :catchall_1ed

    .line 924
    .end local v11    # "inAppMessageMap":Lcom/localytics/android/MarketingMessage;
    :cond_1c4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_40

    .line 962
    .end local v6    # "campaignId":I
    :cond_1c8
    if-eqz v13, :cond_1cd

    .line 964
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 969
    :cond_1cd
    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1d1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/localytics/android/MarketingMessage;

    .line 971
    .restart local v10    # "inApp":Lcom/localytics/android/MarketingMessage;
    invoke-direct {p0, v10}, Lcom/localytics/android/InAppManager;->_destroyLocalInAppMessage(Lcom/localytics/android/MarketingMessage;)V

    .line 972
    const-string/jumbo v0, "campaign_id"

    invoke-virtual {v10, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_deleteFrequencyCappingRule(Ljava/lang/Integer;)Z

    goto :goto_1d1

    .line 962
    .end local v8    # "i":I
    .end local v10    # "inApp":Lcom/localytics/android/MarketingMessage;
    :catchall_1ed
    move-exception v0

    if-eqz v13, :cond_1f3

    .line 964
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_1f3
    throw v0

    .line 974
    .restart local v8    # "i":I
    :cond_1f4
    return-void
.end method

.method _saveFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z
    .registers 11
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 686
    iget-object v6, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v6, v6, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 688
    invoke-virtual {p0, p1, p2}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBase(Ljava/util/Map;Ljava/lang/Integer;)J

    move-result-wide v6

    long-to-int v1, v6

    .line 690
    .local v1, "frequencyId":I
    const-string/jumbo v6, "display_frequencies"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 691
    .local v2, "frequencyRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-lez v1, :cond_4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleDisplayFrequency(Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_4b

    move v3, v4

    .line 693
    .local v3, "success":Z
    :goto_24
    const-string/jumbo v6, "blackout_rules"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 694
    .local v0, "blackoutRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v3, :cond_4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBlackout(Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_4d

    move v3, v4

    .line 696
    :goto_3a
    if-eqz v3, :cond_43

    .line 698
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v4, v4, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 700
    :cond_43
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v4, v4, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 702
    return v3

    .end local v0    # "blackoutRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "success":Z
    :cond_4b
    move v3, v5

    .line 691
    goto :goto_24

    .restart local v0    # "blackoutRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v3    # "success":Z
    :cond_4d
    move v3, v5

    .line 694
    goto :goto_3a
.end method

.method _saveFrequencyCappingRuleBase(Ljava/util/Map;Ljava/lang/Integer;)J
    .registers 7
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Integer;",
            ")J"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "rule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 721
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    .line 724
    const-string/jumbo v2, "max_display_count"

    const-string/jumbo v1, "max_display_count"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    const-string/jumbo v2, "ignore_global"

    const-string/jumbo v1, "ignore_global"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    :goto_30
    iget-object v1, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, v1, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "frequency_capping_rules"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2

    .line 729
    :cond_3d
    const-string/jumbo v1, "max_display_count"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 730
    const-string/jumbo v1, "ignore_global"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_30
.end method

.method _saveFrequencyCappingRuleBlackout(Ljava/util/List;Ljava/lang/Integer;)Z
    .registers 12
    .param p2, "frequencyId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .line 758
    if-eqz p1, :cond_55

    .line 760
    const/4 v5, 0x0

    .line 761
    .local v5, "groupId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 763
    .local v2, "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v2}, Lcom/localytics/android/InAppManager;->_augmentBlackoutRule(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 764
    .local v0, "augmentedBlackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "dates"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 765
    .local v1, "blackoutDatesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v1, p2, v8}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBlackoutDates(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 786
    .end local v0    # "augmentedBlackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "blackoutDatesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "groupId":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    return v7

    .line 770
    .restart local v0    # "augmentedBlackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "blackoutDatesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "groupId":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2c
    const-string/jumbo v8, "weekdays"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 771
    .local v4, "blackoutWeekdaysRules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v4, p2, v8}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBlackoutWeekdays(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 776
    const-string/jumbo v8, "times"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 777
    .local v3, "blackoutTimesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v3, p2, v8}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBlackoutTimes(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 782
    add-int/lit8 v5, v5, 0x1

    .line 783
    goto :goto_8

    .line 786
    .end local v0    # "augmentedBlackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "blackoutDatesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "blackoutTimesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "blackoutWeekdaysRules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "groupId":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_55
    const/4 v7, 0x1

    goto :goto_2b
.end method

.method _saveFrequencyCappingRuleBlackoutDates(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 13
    .param p2, "frequencyId"    # Ljava/lang/Integer;
    .param p3, "groupId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 811
    if-eqz p1, :cond_4b

    .line 813
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 817
    .local v0, "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_14
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v4, v4, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "INSERT INTO %s VALUES (?, ?, datetime(?,\'start of day\'), datetime(?,\'start of day\',\'1 day\',\'-1 second\'));"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "frequency_capping_blackout_dates"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "start"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "end"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_48} :catch_49

    goto :goto_8

    .line 827
    :catch_49
    move-exception v3

    .line 832
    .end local v0    # "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_4a
    return v2

    :cond_4b
    move v2, v3

    goto :goto_4a
.end method

.method _saveFrequencyCappingRuleBlackoutTimes(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 14
    .param p2, "frequencyId"    # Ljava/lang/Integer;
    .param p3, "groupId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 857
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_7c

    .line 859
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 861
    .local v0, "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "start"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/localytics/android/InAppManager;->_timeStringToSeconds(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 862
    .local v3, "start":Ljava/lang/Integer;
    const-string/jumbo v5, "end"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/localytics/android/InAppManager;->_timeStringToSeconds(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 864
    .local v1, "end":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_42

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_44

    .line 866
    :cond_42
    const/4 v5, 0x0

    .line 881
    .end local v0    # "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "end":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "start":Ljava/lang/Integer;
    :goto_43
    return v5

    .line 869
    .restart local v0    # "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "end":Ljava/lang/Integer;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "start":Ljava/lang/Integer;
    :cond_44
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "frequency_id"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string/jumbo v5, "rule_group_id"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string/jumbo v5, "start"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string/jumbo v5, "end"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v6, "frequency_capping_blackout_times"

    invoke-virtual {v5, v6, v4}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_6

    .line 876
    const/4 v5, 0x0

    goto :goto_43

    .line 881
    .end local v0    # "blackoutRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "end":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "start":Ljava/lang/Integer;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_7c
    const/4 v5, 0x1

    goto :goto_43
.end method

.method _saveFrequencyCappingRuleBlackoutWeekdays(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 12
    .param p2, "frequencyId"    # Ljava/lang/Integer;
    .param p3, "groupId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_3a

    .line 839
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 841
    .local v2, "weekday":Ljava/lang/Integer;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 842
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "frequency_id"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    const-string/jumbo v3, "rule_group_id"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    const-string/jumbo v3, "day"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "frequency_capping_blackout_weekdays"

    invoke-virtual {v3, v4, v1}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_6

    .line 847
    const/4 v3, 0x0

    .line 852
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "weekday":Ljava/lang/Integer;
    :goto_39
    return v3

    :cond_3a
    const/4 v3, 0x1

    goto :goto_39
.end method

.method _saveFrequencyCappingRuleDisplayFrequency(Ljava/util/List;Ljava/lang/Integer;)Z
    .registers 11
    .param p2, "frequencyId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz p1, :cond_4c

    .line 740
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 742
    .local v0, "displayFrequencyRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 743
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "frequency_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    const-string/jumbo v4, "count"

    const-string/jumbo v3, "count"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    const-string/jumbo v4, "days"

    const-string/jumbo v3, "days"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "frequency_capping_display_frequencies"

    invoke-virtual {v3, v4, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_6

    .line 748
    const/4 v3, 0x0

    .line 753
    .end local v0    # "displayFrequencyRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_4b
    return v3

    :cond_4c
    const/4 v3, 0x1

    goto :goto_4b
.end method

.method _saveInAppMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;Z)I
    .registers 22
    .param p1, "inAppMessage"    # Lcom/localytics/android/MarketingMessage;
    .param p3, "shouldDeleteCreative"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/localytics/android/InAppManager;->_validateInAppMessage(Lcom/localytics/android/MarketingMessage;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 241
    const/4 v15, 0x0

    .line 318
    :cond_7
    :goto_7
    return v15

    .line 245
    :cond_8
    const-string/jumbo v4, "campaign_id"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v10

    .line 248
    .local v10, "campaignId":I
    const/4 v15, 0x0

    .local v15, "ruleId":I
    const/4 v13, 0x0

    .line 251
    .local v13, "localVersion":I
    const/4 v11, 0x0

    .line 254
    .local v11, "cursorRule":Landroid/database/Cursor;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v5, "marketing_rules"

    sget-object v6, Lcom/localytics/android/InAppManager;->PROJECTION_IN_APP_RULE_RECORD:[Ljava/lang/String;

    const-string/jumbo v7, "%s = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v17, "campaign_id"

    aput-object v17, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 255
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 257
    const-string/jumbo v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 258
    const-string/jumbo v4, "version"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_57
    .catchall {:try_start_14 .. :try_end_57} :catchall_9c

    move-result v13

    .line 263
    :cond_58
    if-eqz v11, :cond_5d

    .line 265
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_5d
    if-lez v15, :cond_f6

    .line 272
    const-string/jumbo v4, "Existing in-app rule already exists for this campaign\n\t campaignID = %d\n\t ruleID = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 274
    const-string/jumbo v4, "version"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v14

    .line 275
    .local v14, "remoteVersion":I
    if-lt v13, v14, :cond_a3

    .line 277
    const-string/jumbo v4, "No update needed. Campaign version has not been updated\n\t version: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 278
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 263
    .end local v14    # "remoteVersion":I
    :catchall_9c
    move-exception v4

    if-eqz v11, :cond_a2

    .line 265
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a2
    throw v4

    .line 282
    .restart local v14    # "remoteVersion":I
    :cond_a3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/localytics/android/InAppManager;->_deleteInAppRuleEventsAndConditions(I)V

    .line 284
    if-eqz p3, :cond_af

    .line 286
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/localytics/android/InAppManager;->_deleteInAppCreative(I)V

    .line 295
    .end local v14    # "remoteVersion":I
    :cond_af
    :goto_af
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v15, v1, v2}, Lcom/localytics/android/InAppManager;->_parseInAppMessage(ILcom/localytics/android/MarketingMessage;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v16

    .line 296
    .local v16, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v5, "marketing_rules"

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/localytics/android/BaseProvider;->replace(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    long-to-int v15, v4

    .line 298
    if-lez v15, :cond_7

    .line 301
    int-to-long v4, v15

    const-string/jumbo v6, "conditions"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/localytics/android/InAppManager;->_saveInAppConditions(JLjava/util/List;)V

    .line 304
    const/4 v12, 0x0

    .line 307
    .local v12, "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_d9
    const-string/jumbo v4, "display_events"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_eb
    .catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_eb} :catch_fd

    move-result-object v12

    .line 312
    :goto_ec
    if-eqz v12, :cond_7

    .line 314
    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v12}, Lcom/localytics/android/InAppManager;->_bindRuleToEvents(JLjava/util/List;)V

    goto/16 :goto_7

    .line 292
    .end local v12    # "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_f6
    const-string/jumbo v4, "In-app campaign not found. Creating a new one."

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_af

    .restart local v12    # "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "values":Landroid/content/ContentValues;
    :catch_fd
    move-exception v4

    goto :goto_ec
.end method

.method _setInAppMessageAsDisplayed(I)Z
    .registers 13
    .param p1, "campaignId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1699
    const/4 v6, 0x0

    .line 1702
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_3
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "frequency_capping_rules"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ignore_global"

    aput-object v4, v2, v3

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v10, "campaign_id"

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1703
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1705
    const-string/jumbo v0, "ignore_global"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1707
    .local v7, "ignoresGlobal":I
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "INSERT INTO %s VALUES (?, datetime(\'%s\'), ?);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "campaigns_displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_80

    .line 1719
    if-eqz v6, :cond_77

    .line 1721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_77
    move v0, v8

    .line 1725
    .end local v7    # "ignoresGlobal":I
    :goto_78
    return v0

    .line 1719
    :cond_79
    if-eqz v6, :cond_7e

    .line 1721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7e
    move v0, v9

    .line 1725
    goto :goto_78

    .line 1719
    :catchall_80
    move-exception v0

    if-eqz v6, :cond_86

    .line 1721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_86
    throw v0
.end method

.method _setInAppMessageAsNotDisplayed(I)Z
    .registers 16
    .param p1, "campaignId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1730
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1731
    .local v6, "campaignIdString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1734
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_7
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "campaigns_displayed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v11, "campaign_id"

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const-string/jumbo v5, "%s DESC"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "date"

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1739
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1741
    const-string/jumbo v0, "date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1742
    .local v8, "date":Ljava/lang/String;
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "campaigns_displayed"

    const-string/jumbo v2, "%s = ? AND %s = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "campaign_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "date"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_7 .. :try_end_77} :catchall_8a

    move-result v0

    if-lez v0, :cond_81

    move v0, v9

    .line 1749
    :goto_7b
    if-eqz v7, :cond_80

    .line 1751
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1755
    .end local v8    # "date":Ljava/lang/String;
    :cond_80
    :goto_80
    return v0

    .restart local v8    # "date":Ljava/lang/String;
    :cond_81
    move v0, v10

    .line 1742
    goto :goto_7b

    .line 1749
    .end local v8    # "date":Ljava/lang/String;
    :cond_83
    if-eqz v7, :cond_88

    .line 1751
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_88
    move v0, v10

    .line 1755
    goto :goto_80

    .line 1749
    :catchall_8a
    move-exception v0

    if-eqz v7, :cond_90

    .line 1751
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_90
    throw v0
.end method

.method protected _triggerMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V
    .registers 6
    .param p1, "message"    # Lcom/localytics/android/MarketingMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "campaign_id"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 1084
    .local v0, "campaignId":I
    const-string/jumbo v1, "control_group"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    .line 1085
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 1087
    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_setInAppMessageAsDisplayed(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1089
    invoke-direct {p0, p1}, Lcom/localytics/android/InAppManager;->_tagAmpActionEventForControlGroup(Lcom/localytics/android/MarketingMessage;)V

    .line 1094
    :cond_1a
    :goto_1a
    return-void

    .line 1093
    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/localytics/android/InAppManager;->_tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V

    goto :goto_1a
.end method

.method _tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "inAppMessage"    # Lcom/localytics/android/MarketingMessage;
    .param p2, "event"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1591
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/InAppManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/localytics/android/InAppManager$4;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1695
    return-void
.end method

.method _tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V
    .registers 4
    .param p1, "inAppMessage"    # Lcom/localytics/android/MarketingMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1583
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/localytics/android/InAppManager;->_tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)V

    .line 1584
    return-void
.end method

.method _validateAndStoreFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z
    .registers 7
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "objectWithRule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, -0x1

    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, "success":Z
    const-string/jumbo v2, "frequency_capping"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 673
    .local v0, "rule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_21

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x1

    :goto_14
    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/InAppManager;->_validateFrequencyCappingRule(Ljava/util/Map;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 675
    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v1

    .line 681
    :cond_1e
    :goto_1e
    return v1

    .line 673
    :cond_1f
    const/4 v2, 0x0

    goto :goto_14

    .line 677
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_1e

    .line 679
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/localytics/android/InAppManager;->DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v2, p2}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v1

    goto :goto_1e
.end method

.method _validateFrequencyCappingRule(Ljava/util/Map;Z)Z
    .registers 16
    .param p2, "isGlobal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "rule":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_12

    sget-object v0, Lcom/localytics/android/InAppManager;->GLOBAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    :goto_4
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_6
    if-ge v6, v8, :cond_18

    aget-object v7, v0, v6

    .line 503
    .local v7, "key":Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 505
    const/4 v10, 0x0

    .line 572
    .end local v6    # "i$":I
    .end local v7    # "key":Ljava/lang/String;
    :goto_11
    return v10

    .line 501
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v8    # "len$":I
    :cond_12
    sget-object v0, Lcom/localytics/android/InAppManager;->INDIVIDUAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

    goto :goto_4

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "len$":I
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 509
    .end local v7    # "key":Ljava/lang/String;
    :cond_18
    const-string/jumbo v10, "display_frequencies"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 510
    .local v5, "frequencyRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "days"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "count"

    aput-object v12, v10, v11

    invoke-virtual {p0, v5, v10}, Lcom/localytics/android/InAppManager;->_checkFrequencyCappingRuleArray(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_38

    .line 512
    const/4 v10, 0x0

    goto :goto_11

    .line 514
    :cond_38
    invoke-virtual {p0, v5}, Lcom/localytics/android/InAppManager;->_additionalFCDisplayFrequencyRulesValidation(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_40

    .line 516
    const/4 v10, 0x0

    goto :goto_11

    .line 519
    :cond_40
    const-string/jumbo v10, "blackout_rules"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 520
    .local v2, "blackoutRulesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    if-eqz v2, :cond_fc

    .line 522
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_53

    .line 524
    const/4 v10, 0x0

    goto :goto_11

    .line 528
    :cond_53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 530
    .local v9, "m":Ljava/util/Map;
    const-string/jumbo v10, "times"

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_80

    const-string/jumbo v10, "dates"

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_80

    const-string/jumbo v10, "weekdays"

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_80

    .line 534
    const/4 v10, 0x0

    goto :goto_11

    .line 538
    :cond_80
    const-string/jumbo v10, "times"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 539
    .local v3, "blackoutTimesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "start"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "end"

    aput-object v12, v10, v11

    invoke-virtual {p0, v3, v10}, Lcom/localytics/android/InAppManager;->_checkFrequencyCappingRuleArray(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a1

    .line 541
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 543
    :cond_a1
    sget-object v10, Lcom/localytics/android/InAppManager;->TIME_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v3, v10}, Lcom/localytics/android/InAppManager;->_additionalFCDatesAndTimesRulesValidation(Ljava/util/List;Ljava/text/SimpleDateFormat;)Z

    move-result v10

    if-nez v10, :cond_ac

    .line 545
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 548
    :cond_ac
    const-string/jumbo v10, "dates"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 549
    .local v1, "blackoutDatesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "start"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "end"

    aput-object v12, v10, v11

    invoke-virtual {p0, v1, v10}, Lcom/localytics/android/InAppManager;->_checkFrequencyCappingRuleArray(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_cd

    .line 551
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 553
    :cond_cd
    sget-object v10, Lcom/localytics/android/InAppManager;->DATE_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1, v10}, Lcom/localytics/android/InAppManager;->_additionalFCDatesAndTimesRulesValidation(Ljava/util/List;Ljava/text/SimpleDateFormat;)Z

    move-result v10

    if-nez v10, :cond_d8

    .line 555
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 558
    :cond_d8
    const-string/jumbo v10, "weekdays"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 559
    .local v4, "blackoutWeekdaysRules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_f3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_f0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x7

    if-le v10, v11, :cond_f3

    .line 561
    :cond_f0
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 563
    :cond_f3
    invoke-virtual {p0, v4}, Lcom/localytics/android/InAppManager;->_additionalFCWeekdaysRulesValidation(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_57

    .line 565
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 572
    .end local v1    # "blackoutDatesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "blackoutTimesRules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "blackoutWeekdaysRules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "m":Ljava/util/Map;
    :cond_fc
    const/4 v10, 0x1

    goto/16 :goto_11
.end method

.method protected _validateInAppMessage(Lcom/localytics/android/MarketingMessage;)Z
    .registers 14
    .param p1, "inAppMessage"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 379
    const-string/jumbo v7, "campaign_id"

    invoke-static {p1, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "campaignId":I
    const-string/jumbo v7, "rule_name"

    invoke-static {p1, v7}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "ruleName":Ljava/lang/String;
    const-string/jumbo v7, "display_events"

    invoke-static {p1, v7}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 382
    .local v1, "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string/jumbo v7, "expiration"

    invoke-static {p1, v7}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    .line 383
    .local v2, "expiration":I
    const-string/jumbo v7, "location"

    invoke-static {p1, v7}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "location":Ljava/lang/String;
    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v7}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 388
    .local v4, "now":J
    if-eqz v0, :cond_4a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4a

    if-eqz v1, :cond_4a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4a

    int-to-long v8, v2

    cmp-long v7, v8, v4

    if-gtz v7, :cond_48

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_4a

    :cond_48
    const/4 v7, 0x1

    :goto_49
    return v7

    :cond_4a
    const/4 v7, 0x0

    goto :goto_49
.end method

.method dismissCurrentInAppMessage()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 112
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v2, :cond_5

    .line 129
    :cond_4
    :goto_4
    return-void

    .line 118
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v3, "marketing_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 119
    .local v0, "currentFragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/localytics/android/InAppDialogFragment;

    if-eqz v2, :cond_4

    .line 121
    check-cast v0, Lcom/localytics/android/InAppDialogFragment;

    .line 122
    .end local v0    # "currentFragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment;->dismissCampaign()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_4

    .line 125
    :catch_18
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Localytics library threw an uncaught exception"

    invoke-static {v2, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method getInAppMessages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    new-instance v1, Lcom/localytics/android/InAppManager$11;

    invoke-direct {v1, p0}, Lcom/localytics/android/InAppManager$11;-><init>(Lcom/localytics/android/InAppManager;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->getList(Ljava/util/concurrent/Callable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method setFragmentManager(Landroid/app/FragmentManager;)V
    .registers 2
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 107
    return-void
.end method

.method showInAppTest()V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1996
    :try_start_0
    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v7, :cond_5

    .line 2321
    :cond_4
    :goto_4
    return-void

    .line 2001
    :cond_5
    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v8, "marketing_test_mode_button"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v8, "marketing_test_mode_list"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_4

    .line 2006
    invoke-static {}, Lcom/localytics/android/TestModeButton;->newInstance()Lcom/localytics/android/TestModeButton;

    move-result-object v2

    .line 2007
    .local v2, "button":Lcom/localytics/android/TestModeButton;
    invoke-static {}, Lcom/localytics/android/TestModeListView;->newInstance()Lcom/localytics/android/TestModeListView;

    move-result-object v6

    .line 2008
    .local v6, "listView":Lcom/localytics/android/TestModeListView;
    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v7}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 2009
    .local v1, "appContext":Landroid/content/Context;
    new-instance v0, Lcom/localytics/android/InAppMessagesAdapter;

    invoke-direct {v0, v1, p0}, Lcom/localytics/android/InAppMessagesAdapter;-><init>(Landroid/content/Context;Lcom/localytics/android/InAppManager;)V

    .line 2011
    .local v0, "adapter":Lcom/localytics/android/InAppMessagesAdapter;
    invoke-virtual {v6, v0}, Lcom/localytics/android/TestModeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2016
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 2018
    .local v3, "callbacksForButton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/localytics/android/InAppManager$5;

    invoke-direct {v8, p0, v0, v6}, Lcom/localytics/android/InAppManager$5;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;Lcom/localytics/android/TestModeListView;)V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    invoke-virtual {v2, v3}, Lcom/localytics/android/TestModeButton;->setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeButton;

    .line 2038
    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v8, "marketing_test_mode_button"

    invoke-virtual {v2, v7, v8}, Lcom/localytics/android/TestModeButton;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2044
    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v7}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2049
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 2052
    .local v4, "callbacksForList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/localytics/android/InAppManager$6;

    invoke-direct {v8, p0, v2}, Lcom/localytics/android/InAppManager$6;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/TestModeButton;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/localytics/android/InAppManager$7;

    invoke-direct {v8, p0, v0}, Lcom/localytics/android/InAppManager$7;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/localytics/android/InAppManager$8;

    invoke-direct {v8, p0, v1}, Lcom/localytics/android/InAppManager$8;-><init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/localytics/android/InAppManager$9;

    invoke-direct {v8, p0, v1}, Lcom/localytics/android/InAppManager$9;-><init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/localytics/android/InAppManager$10;

    invoke-direct {v8, p0, v1}, Lcom/localytics/android/InAppManager$10;-><init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    invoke-virtual {v6, v4}, Lcom/localytics/android/TestModeListView;->setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeListView;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a2} :catch_a4

    goto/16 :goto_4

    .line 2317
    .end local v0    # "adapter":Lcom/localytics/android/InAppMessagesAdapter;
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "button":Lcom/localytics/android/TestModeButton;
    .end local v3    # "callbacksForButton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
    .end local v4    # "callbacksForList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
    .end local v6    # "listView":Lcom/localytics/android/TestModeListView;
    :catch_a4
    move-exception v5

    .line 2319
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Exception while attempting to show in-app test"

    invoke-static {v7, v5}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method
