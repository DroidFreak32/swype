.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final setFromIndex(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "fromIndex"    # I

    .prologue
    .line 422
    .line 1151
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 423
    return-void
.end method

.method public final setItemCount(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "itemCount"    # I

    .prologue
    .line 432
    .line 1159
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 433
    return-void
.end method

.method public final setScrollX(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollX"    # I

    .prologue
    .line 452
    .line 1175
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 453
    return-void
.end method

.method public final setScrollY(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollY"    # I

    .prologue
    .line 457
    .line 1179
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 458
    return-void
.end method

.method public final setScrollable(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollable"    # Z

    .prologue
    .line 462
    .line 1183
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 463
    return-void
.end method

.method public final setToIndex(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "toIndex"    # I

    .prologue
    .line 472
    .line 1191
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 473
    return-void
.end method
