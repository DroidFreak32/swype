.class final Lcom/crashlytics/android/DialogStringResolver;
.super Ljava/lang/Object;
.source "DialogStringResolver.java"


# instance fields
.field private final context:Landroid/content/Context;

.field final promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "promptData"    # Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/crashlytics/android/DialogStringResolver;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/crashlytics/android/DialogStringResolver;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    .line 42
    return-void
.end method


# virtual methods
.method final resourceOrFallbackValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "settingsValue"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/crashlytics/android/DialogStringResolver;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1104
    :goto_0
    if-eqz v1, :cond_2

    .end local p2    # "settingsValue":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 1113
    .restart local p2    # "settingsValue":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 93
    goto :goto_1
.end method
