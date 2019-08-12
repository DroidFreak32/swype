.class public Ltwitter4j/TwitterAPIMonitor;
.super Ljava/lang/Object;
.source "TwitterAPIMonitor.java"


# static fields
.field private static final SINGLETON:Ltwitter4j/TwitterAPIMonitor;

.field private static final STATISTICS:Ltwitter4j/management/APIStatistics;

.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 38
    const-class v7, Ltwitter4j/TwitterAPIMonitor;

    invoke-static {v7}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v7

    sput-object v7, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    .line 41
    const-string v7, "https?:\\/\\/[^\\/]+\\/[0-9.]*\\/([a-zA-Z_\\.]*).*"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    sput-object v7, Ltwitter4j/TwitterAPIMonitor;->pattern:Ljava/util/regex/Pattern;

    .line 44
    new-instance v7, Ltwitter4j/TwitterAPIMonitor;

    invoke-direct {v7}, Ltwitter4j/TwitterAPIMonitor;-><init>()V

    sput-object v7, Ltwitter4j/TwitterAPIMonitor;->SINGLETON:Ltwitter4j/TwitterAPIMonitor;

    .line 46
    new-instance v7, Ltwitter4j/management/APIStatistics;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ltwitter4j/management/APIStatistics;-><init>(I)V

    sput-object v7, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, "isJDK14orEarlier":Z
    :try_start_0
    const-string v7, "java.specification.version"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "versionStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 54
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-lez v7, :cond_2

    const/4 v2, 0x1

    .line 56
    :cond_0
    :goto_0
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v7

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->isDalvik()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    const-string v7, "http.keepAlive"

    const-string v8, "false"

    invoke-static {v7, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v6    # "versionStr":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v3

    .line 68
    .local v3, "mbs":Ljavax/management/MBeanServer;
    if-eqz v2, :cond_3

    .line 69
    new-instance v4, Ljavax/management/ObjectName;

    const-string v7, "twitter4j.mbean:type=APIStatistics"

    invoke-direct {v4, v7}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, "oName":Ljavax/management/ObjectName;
    sget-object v7, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    invoke-interface {v3, v7, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 89
    .end local v3    # "mbs":Ljavax/management/MBeanServer;
    .end local v4    # "oName":Ljavax/management/ObjectName;
    :goto_2
    return-void

    .line 54
    .restart local v6    # "versionStr":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 61
    .end local v6    # "versionStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "ignore":Ljava/lang/SecurityException;
    const/4 v2, 0x1

    goto :goto_1

    .line 72
    .end local v1    # "ignore":Ljava/lang/SecurityException;
    .restart local v3    # "mbs":Ljavax/management/MBeanServer;
    :cond_3
    new-instance v4, Ljavax/management/ObjectName;

    const-string v7, "twitter4j.mbean:type=APIStatisticsOpenMBean"

    invoke-direct {v4, v7}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v4    # "oName":Ljavax/management/ObjectName;
    new-instance v5, Ltwitter4j/management/APIStatisticsOpenMBean;

    sget-object v7, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    invoke-direct {v5, v7}, Ltwitter4j/management/APIStatisticsOpenMBean;-><init>(Ltwitter4j/management/APIStatistics;)V

    .line 74
    .local v5, "openMBean":Ltwitter4j/management/APIStatisticsOpenMBean;
    invoke-interface {v3, v5, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_1
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/management/NotCompliantMBeanException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    .line 76
    .end local v3    # "mbs":Ljavax/management/MBeanServer;
    .end local v4    # "oName":Ljavax/management/ObjectName;
    .end local v5    # "openMBean":Ltwitter4j/management/APIStatisticsOpenMBean;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljavax/management/InstanceAlreadyExistsException;
    invoke-virtual {v0}, Ljavax/management/InstanceAlreadyExistsException;->printStackTrace()V

    .line 78
    sget-object v7, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0}, Ljavax/management/InstanceAlreadyExistsException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 79
    .end local v0    # "e":Ljavax/management/InstanceAlreadyExistsException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Ljavax/management/MBeanRegistrationException;
    invoke-virtual {v0}, Ljavax/management/MBeanRegistrationException;->printStackTrace()V

    .line 81
    sget-object v7, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0}, Ljavax/management/MBeanRegistrationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 82
    .end local v0    # "e":Ljavax/management/MBeanRegistrationException;
    :catch_3
    move-exception v0

    .line 83
    .local v0, "e":Ljavax/management/NotCompliantMBeanException;
    invoke-virtual {v0}, Ljavax/management/NotCompliantMBeanException;->printStackTrace()V

    .line 84
    sget-object v7, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0}, Ljavax/management/NotCompliantMBeanException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    .end local v0    # "e":Ljavax/management/NotCompliantMBeanException;
    :catch_4
    move-exception v0

    .line 86
    .local v0, "e":Ljavax/management/MalformedObjectNameException;
    invoke-virtual {v0}, Ljavax/management/MalformedObjectNameException;->printStackTrace()V

    .line 87
    sget-object v7, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0}, Ljavax/management/MalformedObjectNameException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static getInstance()Ltwitter4j/TwitterAPIMonitor;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Ltwitter4j/TwitterAPIMonitor;->SINGLETON:Ltwitter4j/TwitterAPIMonitor;

    return-object v0
.end method


# virtual methods
.method public getStatistics()Ltwitter4j/management/APIStatisticsMBean;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    return-object v0
.end method

.method methodCalled(Ljava/lang/String;JZ)V
    .locals 4
    .param p1, "twitterUrl"    # Ljava/lang/String;
    .param p2, "elapsedTime"    # J
    .param p4, "success"    # Z

    .prologue
    .line 106
    sget-object v2, Ltwitter4j/TwitterAPIMonitor;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 107
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "method":Ljava/lang/String;
    sget-object v2, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    invoke-virtual {v2, v1, p2, p3, p4}, Ltwitter4j/management/APIStatistics;->methodCalled(Ljava/lang/String;JZ)V

    .line 111
    .end local v1    # "method":Ljava/lang/String;
    :cond_0
    return-void
.end method
