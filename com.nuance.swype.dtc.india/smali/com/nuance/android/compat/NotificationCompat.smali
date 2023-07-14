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
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplJellybean;

    invoke-direct {v0}, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplJellybean;-><init>()V

    sput-object v0, Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    return-object v0
.end method
