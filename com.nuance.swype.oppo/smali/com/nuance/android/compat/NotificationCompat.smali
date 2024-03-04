.class public Lcom/nuance/android/compat/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/android/compat/NotificationCompat$Action;,
        Lcom/nuance/android/compat/NotificationCompat$InboxStyle;,
        Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;,
        Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;,
        Lcom/nuance/android/compat/NotificationCompat$Style;,
        Lcom/nuance/android/compat/NotificationCompat$Builder;,
        Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplJellybean;,
        Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplIceCreamSandwich;,
        Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplHoneycomb;,
        Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplBase;,
        Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;
    }
.end annotation


# static fields
.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field private static final IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplJellybean;

    invoke-direct {v0}, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplJellybean;-><init>()V

    sput-object v0, Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 156
    new-instance v0, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplIceCreamSandwich;

    invoke-direct {v0}, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplIceCreamSandwich;-><init>()V

    sput-object v0, Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 158
    new-instance v0, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplBase;

    invoke-direct {v0}, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplBase;-><init>()V

    sput-object v0, Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    return-object v0
.end method
