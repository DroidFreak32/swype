.class public final enum Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;
.super Ljava/lang/Enum;
.source "TwoFingersGestureDetector.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/TwoFingersGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureDetectionNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

.field public static final enum DOWN:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

.field public static final enum HORIZONTAL_PINCH:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

.field public static final enum HORIZONTAL_SPREAD:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

.field public static final enum LEFT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

.field public static final enum NONE:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

.field public static final enum RIGHT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

.field public static final enum UP:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    new-instance v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->NONE:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 173
    new-instance v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->LEFT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 174
    new-instance v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->RIGHT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 175
    new-instance v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    const-string/jumbo v1, "UP"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->UP:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 176
    new-instance v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    const-string/jumbo v1, "DOWN"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->DOWN:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 178
    new-instance v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    const-string/jumbo v1, "HORIZONTAL_PINCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_PINCH:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 180
    new-instance v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    const-string/jumbo v1, "HORIZONTAL_SPREAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_SPREAD:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 170
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->NONE:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->LEFT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->RIGHT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->UP:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->DOWN:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_PINCH:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_SPREAD:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->$VALUES:[Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

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
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const-class v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->$VALUES:[Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    return-object v0
.end method
