.class final Lcom/crashlytics/android/Crashlytics$7;
.super Ljava/lang/Object;
.source "Crashlytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/Crashlytics;->getSendDecisionFromUser(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$latch:Lcom/crashlytics/android/Crashlytics$OptInLatch;

.field final synthetic val$promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

.field final synthetic val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/Crashlytics$OptInLatch;Lcom/crashlytics/android/DialogStringResolver;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)V
    .registers 6

    .prologue
    .line 994
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$7;->this$0:Lcom/crashlytics/android/Crashlytics;

    iput-object p2, p0, Lcom/crashlytics/android/Crashlytics$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/crashlytics/android/Crashlytics$7;->val$latch:Lcom/crashlytics/android/Crashlytics$OptInLatch;

    iput-object p4, p0, Lcom/crashlytics/android/Crashlytics$7;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    iput-object p5, p0, Lcom/crashlytics/android/Crashlytics$7;->val$promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 997
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 999
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/crashlytics/android/Crashlytics$7$1;

    invoke-direct {v5, p0}, Lcom/crashlytics/android/Crashlytics$7$1;-><init>(Lcom/crashlytics/android/Crashlytics$7;)V

    .line 1007
    .local v5, "sendClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v3, v8, Landroid/util/DisplayMetrics;->density:F

    .line 1011
    .local v3, "density":F
    const/4 v8, 0x5

    invoke-static {v3, v8}, Lcom/crashlytics/android/Crashlytics;->access$300$6be4ac93(FI)I

    move-result v7

    .line 1013
    .local v7, "textViewPadding":I
    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1014
    .local v6, "textView":Landroid/widget/TextView;
    const/16 v8, 0xf

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1015
    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    .line 2055
    const-string/jumbo v9, "com.crashlytics.CrashSubmissionPromptMessage"

    iget-object v10, v8, Lcom/crashlytics/android/DialogStringResolver;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-object v10, v10, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->message:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/crashlytics/android/DialogStringResolver;->resourceOrFallbackValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1015
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$activity:Landroid/app/Activity;

    const v9, 0x1030044

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1017
    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1019
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1021
    new-instance v4, Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1022
    .local v4, "scrollView":Landroid/widget/ScrollView;
    const/16 v8, 0xe

    invoke-static {v3, v8}, Lcom/crashlytics/android/Crashlytics;->access$300$6be4ac93(FI)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v3, v9}, Lcom/crashlytics/android/Crashlytics;->access$300$6be4ac93(FI)I

    move-result v9

    const/16 v10, 0xa

    invoke-static {v3, v10}, Lcom/crashlytics/android/Crashlytics;->access$300$6be4ac93(FI)I

    move-result v10

    const/16 v11, 0xc

    invoke-static {v3, v11}, Lcom/crashlytics/android/Crashlytics;->access$300$6be4ac93(FI)I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 1024
    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1028
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/crashlytics/android/Crashlytics$7;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    .line 3048
    const-string/jumbo v10, "com.crashlytics.CrashSubmissionPromptTitle"

    iget-object v11, v9, Lcom/crashlytics/android/DialogStringResolver;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-object v11, v11, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/crashlytics/android/DialogStringResolver;->resourceOrFallbackValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1028
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/crashlytics/android/Crashlytics$7;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    .line 3063
    const-string/jumbo v10, "com.crashlytics.CrashSubmissionSendTitle"

    iget-object v11, v9, Lcom/crashlytics/android/DialogStringResolver;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-object v11, v11, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->sendButtonTitle:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/crashlytics/android/DialogStringResolver;->resourceOrFallbackValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1028
    invoke-virtual {v8, v9, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1031
    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-boolean v8, v8, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->showCancelButton:Z

    if-eqz v8, :cond_b0

    .line 1032
    new-instance v2, Lcom/crashlytics/android/Crashlytics$7$2;

    invoke-direct {v2, p0}, Lcom/crashlytics/android/Crashlytics$7$2;-><init>(Lcom/crashlytics/android/Crashlytics$7;)V

    .line 1039
    .local v2, "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    .line 3080
    const-string/jumbo v9, "com.crashlytics.CrashSubmissionCancelTitle"

    iget-object v10, v8, Lcom/crashlytics/android/DialogStringResolver;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-object v10, v10, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->cancelButtonTitle:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/crashlytics/android/DialogStringResolver;->resourceOrFallbackValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1039
    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1043
    .end local v2    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_b0
    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-boolean v8, v8, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->showAlwaysSendButton:Z

    if-eqz v8, :cond_cb

    .line 1044
    new-instance v0, Lcom/crashlytics/android/Crashlytics$7$3;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/Crashlytics$7$3;-><init>(Lcom/crashlytics/android/Crashlytics$7;)V

    .line 1052
    .local v0, "alwaysSendClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$7;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    .line 4071
    const-string/jumbo v9, "com.crashlytics.CrashSubmissionAlwaysSendTitle"

    iget-object v10, v8, Lcom/crashlytics/android/DialogStringResolver;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-object v10, v10, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->alwaysSendButtonTitle:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/crashlytics/android/DialogStringResolver;->resourceOrFallbackValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1052
    invoke-virtual {v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1056
    .end local v0    # "alwaysSendClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_cb
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1057
    return-void
.end method
