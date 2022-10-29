.class public final enum Lcom/localytics/android/Region$Event;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/Region$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/Region$Event;

.field public static final enum ENTER:Lcom/localytics/android/Region$Event;

.field public static final enum EXIT:Lcom/localytics/android/Region$Event;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    new-instance v0, Lcom/localytics/android/Region$Event;

    const-string/jumbo v1, "ENTER"

    const-string/jumbo v2, "enter"

    invoke-direct {v0, v1, v3, v2}, Lcom/localytics/android/Region$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/Region$Event;->ENTER:Lcom/localytics/android/Region$Event;

    .line 191
    new-instance v0, Lcom/localytics/android/Region$Event;

    const-string/jumbo v1, "EXIT"

    const-string/jumbo v2, "exit"

    invoke-direct {v0, v1, v4, v2}, Lcom/localytics/android/Region$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/Region$Event;->EXIT:Lcom/localytics/android/Region$Event;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/localytics/android/Region$Event;

    sget-object v1, Lcom/localytics/android/Region$Event;->ENTER:Lcom/localytics/android/Region$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/localytics/android/Region$Event;->EXIT:Lcom/localytics/android/Region$Event;

    aput-object v1, v0, v4

    sput-object v0, Lcom/localytics/android/Region$Event;->$VALUES:[Lcom/localytics/android/Region$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 197
    iput-object p3, p0, Lcom/localytics/android/Region$Event;->name:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/Region$Event;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 188
    const-class v0, Lcom/localytics/android/Region$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/Region$Event;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/Region$Event;
    .registers 1

    .prologue
    .line 188
    sget-object v0, Lcom/localytics/android/Region$Event;->$VALUES:[Lcom/localytics/android/Region$Event;

    invoke-virtual {v0}, [Lcom/localytics/android/Region$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/Region$Event;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/localytics/android/Region$Event;->name:Ljava/lang/String;

    return-object v0
.end method
