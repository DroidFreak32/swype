.class public Lbolts/MeasurementEvent;
.super Ljava/lang/Object;
.source "MeasurementEvent.java"


# static fields
.field public static final APP_LINK_NAVIGATE_IN_EVENT_NAME:Ljava/lang/String; = "al_nav_in"

.field public static final APP_LINK_NAVIGATE_OUT_EVENT_NAME:Ljava/lang/String; = "al_nav_out"

.field public static final MEASUREMENT_EVENT_ARGS_KEY:Ljava/lang/String; = "event_args"

.field public static final MEASUREMENT_EVENT_NAME_KEY:Ljava/lang/String; = "event_name"

.field public static final MEASUREMENT_EVENT_NOTIFICATION_NAME:Ljava/lang/String; = "com.parse.bolts.measurement_event"


# instance fields
.field private appContext:Landroid/content/Context;

.field private args:Landroid/os/Bundle;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbolts/MeasurementEvent;->appContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lbolts/MeasurementEvent;->name:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lbolts/MeasurementEvent;->args:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method private static getApplinkLogData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "appLinkData"    # Landroid/os/Bundle;
    .param p3, "applinkIntent"    # Landroid/content/Intent;

    .prologue
    .line 138
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v3, "logData":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    .line 141
    .local v6, "resolvedActivity":Landroid/content/ComponentName;
    if-eqz v6, :cond_19

    .line 142
    const-string/jumbo v9, "class"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_19
    const-string/jumbo v9, "al_nav_out"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 146
    if-eqz v6, :cond_2e

    .line 147
    const-string/jumbo v9, "package"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_2e
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_42

    .line 150
    const-string/jumbo v9, "outputURL"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_42
    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_52

    .line 153
    const-string/jumbo v9, "outputURLScheme"

    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_52
    :goto_52
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_141

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 166
    .local v5, "o":Ljava/lang/Object;
    instance-of v9, v5, Landroid/os/Bundle;

    if-eqz v9, :cond_115

    move-object v9, v5

    .line 167
    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "subKey":Ljava/lang/String;
    move-object v9, v5

    .line 168
    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lbolts/MeasurementEvent;->objectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "logValue":Ljava/lang/String;
    const-string/jumbo v9, "referer_app_link"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 170
    const-string/jumbo v9, "url"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 171
    const-string/jumbo v9, "refererURL"

    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 155
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "logValue":Ljava/lang/String;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "subKey":Ljava/lang/String;
    :cond_a9
    const-string/jumbo v9, "al_nav_in"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 156
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_c6

    .line 157
    const-string/jumbo v9, "inputURL"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_c6
    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_52

    .line 160
    const-string/jumbo v9, "inputURLScheme"

    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 173
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "logValue":Ljava/lang/String;
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v7    # "subKey":Ljava/lang/String;
    :cond_d8
    const-string/jumbo v9, "app_name"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e8

    .line 174
    const-string/jumbo v9, "refererAppName"

    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 176
    :cond_e8
    const-string/jumbo v9, "package"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 177
    const-string/jumbo v9, "sourceApplication"

    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 181
    :cond_f8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_79

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "logValue":Ljava/lang/String;
    .end local v7    # "subKey":Ljava/lang/String;
    :cond_115
    invoke-static {v5}, Lbolts/MeasurementEvent;->objectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .restart local v4    # "logValue":Ljava/lang/String;
    const-string/jumbo v9, "target_url"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13c

    .line 186
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 187
    .local v8, "targetURI":Landroid/net/Uri;
    const-string/jumbo v9, "targetURL"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v9, "targetURLHost"

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 191
    .end local v8    # "targetURI":Landroid/net/Uri;
    :cond_13c
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 194
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "logValue":Ljava/lang/String;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_141
    return-object v3
.end method

.method private static objectToJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p0, :cond_4

    .line 215
    .end local p0    # "o":Ljava/lang/Object;
    :goto_3
    return-object v0

    .line 201
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v1, p0, Lorg/json/JSONArray;

    if-nez v1, :cond_c

    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_11

    .line 202
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 206
    :cond_11
    :try_start_11
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_21

    .line 207
    new-instance v1, Lorg/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 209
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_21
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_31

    .line 210
    new-instance v1, Lorg/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 212
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_31
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_36

    move-result-object v0

    goto :goto_3

    .line 215
    .end local p0    # "o":Ljava/lang/Object;
    :catch_36
    move-exception v1

    goto :goto_3
.end method

.method private sendBroadcast()V
    .registers 10

    .prologue
    .line 119
    iget-object v5, p0, Lbolts/MeasurementEvent;->name:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 123
    :cond_b
    :try_start_b
    const-string/jumbo v5, "android.support.v4.content.LocalBroadcastManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 124
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 125
    .local v3, "methodGetInstance":Ljava/lang/reflect/Method;
    const-string/jumbo v5, "sendBroadcast"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Intent;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 126
    .local v4, "methodSendBroadcast":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lbolts/MeasurementEvent;->appContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "localBroadcastManager":Ljava/lang/Object;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.parse.bolts.measurement_event"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "event":Landroid/content/Intent;
    const-string/jumbo v5, "event_name"

    iget-object v6, p0, Lbolts/MeasurementEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v5, "event_args"

    iget-object v6, p0, Lbolts/MeasurementEvent;->args:Landroid/os/Bundle;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5e} :catch_5f

    .line 135
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "event":Landroid/content/Intent;
    .end local v2    # "localBroadcastManager":Ljava/lang/Object;
    .end local v3    # "methodGetInstance":Ljava/lang/reflect/Method;
    .end local v4    # "methodSendBroadcast":Ljava/lang/reflect/Method;
    :goto_5e
    return-void

    .line 132
    :catch_5f
    move-exception v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_5e
.end method

.method static sendBroadcastEvent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p3, "extraLoggingData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v5, "logData":Landroid/os/Bundle;
    if-eqz p2, :cond_11

    .line 80
    invoke-static {p2}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "applinkData":Landroid/os/Bundle;
    if-eqz v0, :cond_31

    .line 82
    invoke-static {p0, p1, v0, p2}, Lbolts/MeasurementEvent;->getApplinkLogData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    .line 99
    .end local v0    # "applinkData":Landroid/os/Bundle;
    :cond_11
    if-eqz p3, :cond_67

    .line 100
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 101
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 84
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .restart local v0    # "applinkData":Landroid/os/Bundle;
    :cond_31
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 85
    .local v3, "intentUri":Landroid/net/Uri;
    if-eqz v3, :cond_41

    .line 86
    const-string/jumbo v7, "intentData"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 89
    .local v2, "intentExtras":Landroid/os/Bundle;
    if-eqz v2, :cond_11

    .line 90
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 91
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 92
    invoke-static {v7}, Lbolts/MeasurementEvent;->objectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "logValue":Ljava/lang/String;
    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 104
    .end local v0    # "applinkData":Landroid/os/Bundle;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intentExtras":Landroid/os/Bundle;
    .end local v3    # "intentUri":Landroid/net/Uri;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "logValue":Ljava/lang/String;
    :cond_67
    new-instance v7, Lbolts/MeasurementEvent;

    invoke-direct {v7, p0, p1, v5}, Lbolts/MeasurementEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 105
    invoke-direct {v7}, Lbolts/MeasurementEvent;->sendBroadcast()V

    .line 106
    return-void
.end method
