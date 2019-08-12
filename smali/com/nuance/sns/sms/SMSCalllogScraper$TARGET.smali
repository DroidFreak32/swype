.class public final enum Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;
.super Ljava/lang/Enum;
.source "SMSCalllogScraper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/sns/sms/SMSCalllogScraper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TARGET"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

.field public static final enum CALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

.field public static final enum SMS:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

.field public static final enum SMSCALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->SMS:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    .line 42
    new-instance v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    const-string v1, "CALLLOG"

    invoke-direct {v0, v1, v3}, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->CALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    .line 43
    new-instance v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    const-string v1, "SMSCALLLOG"

    invoke-direct {v0, v1, v4}, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->SMSCALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    sget-object v1, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->SMS:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->CALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->SMSCALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->$VALUES:[Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    return-object v0
.end method

.method public static values()[Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->$VALUES:[Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    invoke-virtual {v0}, [Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    return-object v0
.end method
