.class final enum Lcom/crashlytics/android/answers/SessionEvent$Type;
.super Ljava/lang/Enum;
.source "SessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/answers/SessionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum CRASH:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum CREATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum CUSTOM:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum DESTROY:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum ERROR:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum INSTALL:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum PAUSE:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum RESUME:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum SAVE_INSTANCE_STATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum START:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field public static final enum STOP:Lcom/crashlytics/android/answers/SessionEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->CREATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 15
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->START:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 16
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->RESUME:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 17
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "SAVE_INSTANCE_STATE"

    invoke-direct {v0, v1, v6}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->SAVE_INSTANCE_STATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 18
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->PAUSE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 19
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->STOP:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 20
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "DESTROY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->DESTROY:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 21
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->ERROR:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 22
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "CRASH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->CRASH:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 23
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "INSTALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->INSTALL:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 24
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    const-string/jumbo v1, "CUSTOM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->CUSTOM:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 13
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/crashlytics/android/answers/SessionEvent$Type;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->CREATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->START:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->RESUME:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->SAVE_INSTANCE_STATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->PAUSE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->STOP:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->DESTROY:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->ERROR:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->CRASH:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->INSTALL:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->CUSTOM:Lcom/crashlytics/android/answers/SessionEvent$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->$VALUES:[Lcom/crashlytics/android/answers/SessionEvent$Type;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/SessionEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/answers/SessionEvent$Type;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->$VALUES:[Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {v0}, [Lcom/crashlytics/android/answers/SessionEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/answers/SessionEvent$Type;

    return-object v0
.end method
