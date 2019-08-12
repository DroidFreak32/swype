.class public abstract Ltwitter4j/internal/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final LOGGER_FACTORY:Ltwitter4j/internal/logging/LoggerFactory;

.field private static final LOGGER_FACTORY_IMPLEMENTATION:Ljava/lang/String; = "twitter4j.loggerFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "loggerFactory":Ltwitter4j/internal/logging/LoggerFactory;
    const-string v4, "twitter4j.loggerFactory"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "loggerFactoryImpl":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 38
    invoke-static {v2, v2}, Ltwitter4j/internal/logging/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;

    move-result-object v1

    .line 41
    :cond_0
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    .line 44
    .local v0, "conf":Ltwitter4j/conf/Configuration;
    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getLoggerFactory()Ljava/lang/String;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    invoke-static {v2, v2}, Ltwitter4j/internal/logging/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;

    move-result-object v1

    .line 49
    :cond_1
    if-nez v1, :cond_2

    .line 50
    const-string v4, "org.slf4j.impl.StaticLoggerBinder"

    const-string v5, "twitter4j.internal.logging.SLF4JLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/internal/logging/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;

    move-result-object v1

    .line 53
    :cond_2
    if-nez v1, :cond_3

    .line 54
    const-string v4, "org.apache.commons.logging.Log"

    const-string v5, "twitter4j.internal.logging.CommonsLoggingLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/internal/logging/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;

    move-result-object v1

    .line 57
    :cond_3
    if-nez v1, :cond_4

    .line 58
    const-string v4, "org.apache.log4j.Logger"

    const-string v5, "twitter4j.internal.logging.Log4JLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/internal/logging/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;

    move-result-object v1

    .line 61
    :cond_4
    if-nez v1, :cond_5

    .line 62
    const-string v4, "com.google.appengine.api.urlfetch.URLFetchService"

    const-string v5, "twitter4j.internal.logging.JULLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/internal/logging/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;

    move-result-object v1

    .line 65
    :cond_5
    if-nez v1, :cond_6

    .line 66
    new-instance v1, Ltwitter4j/internal/logging/StdOutLoggerFactory;

    .end local v1    # "loggerFactory":Ltwitter4j/internal/logging/LoggerFactory;
    invoke-direct {v1}, Ltwitter4j/internal/logging/StdOutLoggerFactory;-><init>()V

    .line 68
    .restart local v1    # "loggerFactory":Ltwitter4j/internal/logging/LoggerFactory;
    :cond_6
    sput-object v1, Ltwitter4j/internal/logging/Logger;->LOGGER_FACTORY:Ltwitter4j/internal/logging/LoggerFactory;

    .line 71
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "dumpConfiguration"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 72
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0

    .line 77
    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 102
    sget-object v0, Ltwitter4j/internal/logging/Logger;->LOGGER_FACTORY:Ltwitter4j/internal/logging/LoggerFactory;

    invoke-virtual {v0, p0}, Ltwitter4j/internal/logging/LoggerFactory;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method private static getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;
    .locals 2
    .param p0, "checkClassName"    # Ljava/lang/String;
    .param p1, "implementationClass"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/internal/logging/LoggerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 89
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 92
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public abstract debug(Ljava/lang/String;)V
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract info(Ljava/lang/String;)V
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isErrorEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isWarnEnabled()Z
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)V
.end method
