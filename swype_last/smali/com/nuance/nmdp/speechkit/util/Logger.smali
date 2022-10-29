.class public final Lcom/nuance/nmdp/speechkit/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "SpeechKit"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendToName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-boolean v2, Lcom/nuance/nmdp/speechkit/util/Config;->OBFUSCATED:Z

    if-nez v2, :cond_6

    if-nez p0, :cond_7

    .line 45
    .end local p1    # "text":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p1

    .line 35
    .restart local p1    # "text":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 41
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 42
    .local v0, "lastPeriod":I
    if-ltz v0, :cond_2b

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string/jumbo v0, "SpeechKit"

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/util/Logger;->appendToName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/oem/OemLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    const-string/jumbo v0, "SpeechKit"

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/util/Logger;->appendToName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/nuance/nmdp/speechkit/oem/OemLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public static info(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 10
    const-string/jumbo v0, "SpeechKit"

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/util/Logger;->appendToName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/oem/OemLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static warn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string/jumbo v0, "SpeechKit"

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/util/Logger;->appendToName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/oem/OemLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method
