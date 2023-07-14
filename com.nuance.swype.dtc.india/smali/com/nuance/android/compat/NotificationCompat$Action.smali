.class public Lcom/nuance/android/compat/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "icon_"    # I
    .param p2, "title_"    # Ljava/lang/CharSequence;
    .param p3, "intent_"    # Landroid/app/PendingIntent;

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    iput p1, p0, Lcom/nuance/android/compat/NotificationCompat$Action;->icon:I

    .line 800
    iput-object p2, p0, Lcom/nuance/android/compat/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 801
    iput-object p3, p0, Lcom/nuance/android/compat/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 802
    return-void
.end method
