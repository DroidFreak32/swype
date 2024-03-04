.class public Lcom/nuance/android/compat/TextServicesInfoFactory;
.super Ljava/lang/Object;
.source "TextServicesInfoFactory.java"


# static fields
.field private static log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "TextServicesInfoFactory"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/TextServicesInfoFactory;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTextServicesInfo(Landroid/content/Context;)Lcom/nuance/android/compat/TextServicesInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 23
    :try_start_0
    sget v0, Lcom/nuance/swype/input/R$string;->text_services_info:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/android/compat/TextServicesInfo;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/android/compat/TextServicesInfoFactory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "InstantiationException"

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v0, v1

    .line 28
    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    sget-object v0, Lcom/nuance/android/compat/TextServicesInfoFactory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "IllegalAccessException"

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v0, v1

    .line 31
    goto :goto_0

    .line 33
    :catch_2
    move-exception v0

    sget-object v0, Lcom/nuance/android/compat/TextServicesInfoFactory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "ClassNotFoundException"

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v0, v1

    .line 34
    goto :goto_0
.end method
