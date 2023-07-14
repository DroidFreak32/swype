.class final enum Lcom/localytics/android/ProfileHandler$ProfileOperation;
.super Ljava/lang/Enum;
.source "ProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProfileOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/ProfileHandler$ProfileOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum DELETE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum INCREMENT:Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;


# instance fields
.field private final operation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string/jumbo v1, "ASSIGN"

    const-string/jumbo v2, "assign"

    invoke-direct {v0, v1, v3, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 330
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string/jumbo v1, "DELETE"

    const-string/jumbo v2, "delete"

    invoke-direct {v0, v1, v4, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->DELETE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 331
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string/jumbo v1, "SETADD"

    const-string/jumbo v2, "set-add"

    invoke-direct {v0, v1, v5, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 332
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string/jumbo v1, "SETREMOVE"

    const-string/jumbo v2, "set-remove"

    invoke-direct {v0, v1, v6, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 333
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string/jumbo v1, "INCREMENT"

    const-string/jumbo v2, "increment"

    invoke-direct {v0, v1, v7, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->INCREMENT:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 327
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/localytics/android/ProfileHandler$ProfileOperation;

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->DELETE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->INCREMENT:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    aput-object v1, v0, v7

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->$VALUES:[Lcom/localytics/android/ProfileHandler$ProfileOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 339
    iput-object p3, p0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->operation:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/ProfileHandler$ProfileOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    const-class v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/ProfileHandler$ProfileOperation;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->$VALUES:[Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-virtual {v0}, [Lcom/localytics/android/ProfileHandler$ProfileOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/ProfileHandler$ProfileOperation;

    return-object v0
.end method


# virtual methods
.method public final getOperationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->operation:Ljava/lang/String;

    return-object v0
.end method
