.class public final enum Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
.super Ljava/lang/Enum;
.source "Localytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Localytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InAppMessageDismissButtonLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

.field public static final enum LEFT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

.field public static final enum RIGHT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->LEFT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    .line 96
    new-instance v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->RIGHT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    sget-object v1, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->LEFT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->RIGHT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->$VALUES:[Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->$VALUES:[Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    invoke-virtual {v0}, [Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    return-object v0
.end method
