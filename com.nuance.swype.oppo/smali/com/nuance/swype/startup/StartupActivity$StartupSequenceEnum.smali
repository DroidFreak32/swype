.class public final enum Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;
.super Ljava/lang/Enum;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartupSequenceEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum BackupAndSync:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum ContributeUsageData:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum DownloadLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum EnableSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum Eula:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum GettingStarted:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum TermsOfService:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

.field public static final enum TracePath:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "Eula"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->Eula:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "TracePath"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->TracePath:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "EnableSwype"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->EnableSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "SelectSwype"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "ChooseLanguage"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "DownloadLanguage"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->DownloadLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "BackupAndSync"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->BackupAndSync:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    .line 161
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "TermsOfService"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->TermsOfService:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "ContributeUsageData"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ContributeUsageData:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    const-string v1, "GettingStarted"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->GettingStarted:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    .line 159
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->Eula:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->TracePath:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->EnableSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->DownloadLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->BackupAndSync:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->TermsOfService:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ContributeUsageData:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->GettingStarted:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->$VALUES:[Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    const-class v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->$VALUES:[Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v0}, [Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    return-object v0
.end method
