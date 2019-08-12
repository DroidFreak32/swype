.class public final enum Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;
.super Ljava/lang/Enum;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartupActivityEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum AccountRegisterActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum ConnectTOSActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum ContributeUsageDataActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum CustomWebviewActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum EulaActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum GettingStartedActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum TermsOfServiceActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum UsageOptInActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

.field private static enum WelcomeActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;


# instance fields
.field private finishPredecessors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "WelcomeActivity"

    invoke-direct {v0, v1, v3, v4}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->WelcomeActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 133
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "AccountRegisterActivity"

    invoke-direct {v0, v1, v4, v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->AccountRegisterActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 134
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "EulaActivity"

    invoke-direct {v0, v1, v5, v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->EulaActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 135
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "ConnectTOSActivity"

    invoke-direct {v0, v1, v6, v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->ConnectTOSActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 136
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "UsageOptInActivity"

    invoke-direct {v0, v1, v7, v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->UsageOptInActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 137
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "GettingStartedActivity"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->GettingStartedActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 138
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "CustomWebviewActivity"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->CustomWebviewActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 139
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "TermsOfServiceActivity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->TermsOfServiceActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 140
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    const-string v1, "ContributeUsageDataActivity"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->ContributeUsageDataActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    .line 131
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->WelcomeActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->AccountRegisterActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->EulaActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->ConnectTOSActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->UsageOptInActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->GettingStartedActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->CustomWebviewActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->TermsOfServiceActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->ContributeUsageDataActivity:Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->$VALUES:[Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "finishPredecessors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-boolean p3, p0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->finishPredecessors:Z

    .line 148
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->$VALUES:[Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    invoke-virtual {v0}, [Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    return-object v0
.end method


# virtual methods
.method public final getFinishPredecessors()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->finishPredecessors:Z

    return v0
.end method
