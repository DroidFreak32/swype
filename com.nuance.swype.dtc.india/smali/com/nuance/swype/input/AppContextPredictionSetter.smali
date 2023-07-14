.class public Lcom/nuance/swype/input/AppContextPredictionSetter;
.super Ljava/lang/Object;
.source "AppContextPredictionSetter.java"


# static fields
.field public static final APPCONTEXT_EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final APPCONTEXT_MESSAGING:Ljava/lang/String; = "MESSAGING"

.field public static final APPCONTEXT_SCAN_ANDROID_SMS:Ljava/lang/String; = "com.android.mms"

.field public static final APPCONTEXT_SCAN_EMAIL:Ljava/lang/String; = "com.android.email"

.field public static final APPCONTEXT_SCAN_GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field public static final APPCONTEXT_SCAN_TWITTER:Ljava/lang/String; = "com.twitter.android"

.field public static final APPCONTEXT_SOCIAL:Ljava/lang/String; = "SOCIAL"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final packageToGroupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "AppContextSetter"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/AppContextPredictionSetter;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/AppContextPredictionSetter;->packageToGroupTable:Ljava/util/Map;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$xml;->appcontext_group_config:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 42
    .local v4, "xmlParser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    .line 43
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 44
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "groupNameTag":Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "package_name"

    invoke-interface {v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 49
    iget-object v5, p0, Lcom/nuance/swype/input/AppContextPredictionSetter;->packageToGroupTable:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, "group":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 51
    iget-object v5, p0, Lcom/nuance/swype/input/AppContextPredictionSetter;->packageToGroupTable:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-object v1, v2

    .line 55
    :cond_1
    sget-object v5, Lcom/nuance/swype/input/AppContextPredictionSetter;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[AppContextSetter XML Reader] package: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", group: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "event":I
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "groupNameTag":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    :goto_1
    if-eqz v4, :cond_2

    .line 64
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 67
    :cond_2
    :goto_2
    return-void

    .line 63
    .restart local v0    # "event":I
    :cond_3
    if-eqz v4, :cond_2

    .line 64
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 63
    .end local v0    # "event":I
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_4

    .line 64
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v5

    .line 63
    :catch_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AppContextPredictionSetter;->packageToGroupTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeOfDayMarker()Ljava/lang/String;
    .locals 7

    .prologue
    .line 74
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 75
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 77
    .local v1, "h24":I
    add-int/lit8 v2, v1, 0x2

    div-int/lit8 v0, v2, 0x6

    .line 78
    .local v0, "d4":I
    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x4

    .line 81
    :cond_0
    sget-object v2, Lcom/nuance/swype/input/AppContextPredictionSetter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[appcontext] hour of the day: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " quarter slot of day: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
