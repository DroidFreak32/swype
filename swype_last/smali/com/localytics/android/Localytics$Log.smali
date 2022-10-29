.class final Lcom/localytics/android/Localytics$Log;
.super Ljava/lang/Object;
.source "Localytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Localytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Log"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;)I
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1834
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1836
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1840
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1846
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1848
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 1852
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static e(Ljava/lang/String;)I
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1858
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1860
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1864
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1870
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1872
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 1876
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static i(Ljava/lang/String;)I
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1882
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1884
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1888
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1894
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1896
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 1900
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static v(Ljava/lang/String;)I
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1918
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1920
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1924
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1906
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1908
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 1912
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static w(Ljava/lang/String;)I
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1954
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1956
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1960
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1942
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1944
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 1948
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static w(Ljava/lang/Throwable;)I
    .registers 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1930
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1932
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 1936
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static wtf(Ljava/lang/String;)I
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1990
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1992
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1996
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1978
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1980
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 1984
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method static wtf(Ljava/lang/Throwable;)I
    .registers 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1966
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_c

    .line 1968
    const-string/jumbo v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 1972
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method
