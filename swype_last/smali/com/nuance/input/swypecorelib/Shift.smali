.class public Lcom/nuance/input/swypecorelib/Shift;
.super Ljava/lang/Object;
.source "Shift.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    }
.end annotation


# static fields
.field private static final NATIVE_SHIFT_LOCKED:I = 0x2

.field private static final NATIVE_SHIFT_OFF:I = 0x0

.field private static final NATIVE_SHIFT_ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
