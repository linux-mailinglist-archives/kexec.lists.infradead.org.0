Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA051C331B
	for <lists+kexec@lfdr.de>; Mon,  4 May 2020 08:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPhl5csFP7WFcXQZFOBReBQKm4QGYMjMwz7n4pr/XUg=; b=XpAkOxkD89QdtR
	nm4354UCG87H0RprsXKi/O8q2AHyPjps/9LwQ/cEboc5PmdPKZA6RE29ziPOHSqbdrrVWaSyu/4Cp
	YmfDHskGLCGH46aGSHPxr97KWt5UXgO91QZUSVhAwSi69YQPzEx6MubUSKN9VIxCBtTbKWaCmaUVG
	zDuLGcII+dVbQuouexiRDn8w7DjKYmVkHWY8tdeSpYTbAq4+N5bpy2QbztqQJRhKZhiqjtX036qJz
	/Z6kQ7scK5DNDer8CADYnipoh0iO17b2d0Og9/U5OOTxTUKz3XAOO8WdY6gMEtnZeykCkADzHmPW5
	6hxkZ1RD4Tz6wtnKRSrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVUoZ-000680-65; Mon, 04 May 2020 06:42:55 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUSA0-0007hH-DA
 for kexec@lists.infradead.org; Fri, 01 May 2020 09:40:49 +0000
Received: from [5.158.153.53] (helo=g2noscherz.lab.linutronix.de.)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jUS9m-00038k-2h; Fri, 01 May 2020 11:40:30 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: [PATCH v2 2/3] printk: add lockless buffer
Date: Fri,  1 May 2020 11:46:09 +0206
Message-Id: <20200501094010.17694-3-john.ogness@linutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501094010.17694-1-john.ogness@linutronix.de>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_024044_884187_99854BB3 
X-CRM114-Status: GOOD (  32.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Mailman-Approved-At: Sun, 03 May 2020 23:42:50 -0700
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Andrea Parri <parri.andrea@gmail.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Introduce a multi-reader multi-writer lockless ringbuffer for storing
the kernel log messages. Readers and writers may use their API from
any context (including scheduler and NMI). This ringbuffer will make
it possible to decouple printk() callers from any context, locking,
or console constraints. It also makes it possible for readers to have
full access to the ringbuffer contents at any time and context (for
example from any panic situation).

The printk_ringbuffer is made up of 3 internal ringbuffers:

desc_ring:
A ring of descriptors. A descriptor contains all record meta data
(sequence number, timestamp, loglevel, etc.) as well as internal state
information about the record and logical positions specifying where in
the other ringbuffers the text and dictionary strings are located.

text_data_ring:
A ring of data blocks. A data block consists of an unsigned long
integer (ID) that maps to a desc_ring index followed by the text
string of the record.

dict_data_ring:
A ring of data blocks. A data block consists of an unsigned long
integer (ID) that maps to a desc_ring index followed by the dictionary
string of the record.

The internal state information of a descriptor is the key element to
allow readers and writers to locklessly synchronize access to the data.

Co-developed-by: Petr Mladek <pmladek@suse.com>
Signed-off-by: John Ogness <john.ogness@linutronix.de>
---
 kernel/printk/Makefile            |    1 +
 kernel/printk/printk_ringbuffer.c | 1626 +++++++++++++++++++++++++++++
 kernel/printk/printk_ringbuffer.h |  369 +++++++
 3 files changed, 1996 insertions(+)
 create mode 100644 kernel/printk/printk_ringbuffer.c
 create mode 100644 kernel/printk/printk_ringbuffer.h

diff --git a/kernel/printk/Makefile b/kernel/printk/Makefile
index 4d052fc6bcde..eee3dc9b60a9 100644
--- a/kernel/printk/Makefile
+++ b/kernel/printk/Makefile
@@ -2,3 +2,4 @@
 obj-y	= printk.o
 obj-$(CONFIG_PRINTK)	+= printk_safe.o
 obj-$(CONFIG_A11Y_BRAILLE_CONSOLE)	+= braille.o
+obj-$(CONFIG_PRINTK)	+= printk_ringbuffer.o
diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
new file mode 100644
index 000000000000..e0a66468d4f3
--- /dev/null
+++ b/kernel/printk/printk_ringbuffer.c
@@ -0,0 +1,1626 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/kernel.h>
+#include <linux/irqflags.h>
+#include <linux/string.h>
+#include <linux/errno.h>
+#include <linux/bug.h>
+#include "printk_ringbuffer.h"
+
+/**
+ * DOC: printk_ringbuffer overview
+ *
+ * Data Structure
+ * --------------
+ * The printk_ringbuffer is made up of 3 internal ringbuffers:
+ *
+ *   desc_ring
+ *     A ring of descriptors. A descriptor contains all record meta data
+ *     (sequence number, timestamp, loglevel, etc.) as well as internal state
+ *     information about the record and logical positions specifying where in
+ *     the other ringbuffers the text and dictionary strings are located.
+ *
+ *   text_data_ring
+ *     A ring of data blocks. A data block consists of an unsigned long
+ *     integer (ID) that maps to a desc_ring index followed by the text
+ *     string of the record.
+ *
+ *   dict_data_ring
+ *     A ring of data blocks. A data block consists of an unsigned long
+ *     integer (ID) that maps to a desc_ring index followed by the dictionary
+ *     string of the record.
+ *
+ * The internal state information of a descriptor is the key element to allow
+ * readers and writers to locklessly synchronize access to the data.
+ *
+ * Implementation
+ * --------------
+ *
+ * ABA Issues
+ * ~~~~~~~~~~
+ * To help avoid ABA issues, descriptors are referenced by IDs (array index
+ * values with tagged states) and data blocks are referenced by logical
+ * positions (array index values with tagged states). However, on 32-bit
+ * systems the number of tagged states is relatively small such that an ABA
+ * incident is (at least theoretically) possible. For example, if 4 million
+ * maximally sized (1KiB) printk messages were to occur in NMI context on a
+ * 32-bit system, the interrupted task would not be able to recognize that
+ * the 32-bit integer completely wrapped and thus represents a different
+ * data block than the one the interrupted task expects.
+ *
+ * To help combat this possibility, additional state checking is performed
+ * (such as using cmpxchg() even though set() would suffice). These extra
+ * checks are commented as such and will hopefully catch any ABA issue that
+ * a 32-bit system might experience.
+ *
+ * Memory Barriers
+ * ~~~~~~~~~~~~~~~
+ * Multiple memory barriers are used. To simplify proving correctness and
+ * generating litmus tests, lines of code related to memory barriers
+ * (loads, stores, and the associated memory barriers) are labeled::
+ *
+ *	LMM(function:letter)
+ *
+ * Comments reference the labels using only the "function:letter" part.
+ *
+ * Descriptor Ring
+ * ~~~~~~~~~~~~~~~
+ * The descriptor ring is an array of descriptors. A descriptor contains all
+ * the meta data of a printk record as well as blk_lpos structs pointing to
+ * associated text and dictionary data blocks (see "Data Rings" below). Each
+ * descriptor is assigned an ID that maps directly to index values of the
+ * descriptor array and has a state. The ID and the state are bitwise combined
+ * into a single descriptor field named @state_var, allowing ID and state to
+ * be synchronously and atomically updated.
+ *
+ * Descriptors have three states:
+ *
+ *   reserved
+ *     A writer is modifying the record.
+ *
+ *   committed
+ *     The record and all its data are complete and available for reading.
+ *
+ *   reusable
+ *     The record exists, but its text and/or dictionary data may no longer
+ *     be available.
+ *
+ * Querying the @state_var of a record requires providing the ID of the
+ * descriptor to query. This can yield a possible fourth (pseudo) state:
+ *
+ *   miss
+ *     The descriptor being queried has an unexpected ID.
+ *
+ * The descriptor ring has a @tail_id that contains the ID of the oldest
+ * descriptor and @head_id that contains the ID of the newest descriptor.
+ *
+ * When a new descriptor should be created (and the ring is full), the tail
+ * descriptor is invalidated by first transitioning to the reusable state and
+ * then invalidating all tail data blocks up to and including the data blocks
+ * associated with the tail descriptor (for text and dictionary rings). Then
+ * @tail_id is advanced, followed by advancing @head_id. And finally the
+ * @state_var of the new descriptor is initialized to the new ID and reserved
+ * state.
+ *
+ * The @tail_id can only be advanced if the the new @tail_id would be in the
+ * committed or reusable queried state. This makes it possible that a valid
+ * sequence number of the tail is always available.
+ *
+ * Data Rings
+ * ~~~~~~~~~~
+ * The two data rings (text and dictionary) function identically. They exist
+ * separately so that their buffer sizes can be individually set and they do
+ * not affect one another.
+ *
+ * Data rings are byte arrays composed of data blocks. Data blocks are
+ * referenced by blk_lpos structs that point to the logical position of the
+ * beginning of a data block and the beginning of the next adjacent data
+ * block. Logical positions are mapped directly to index values of the byte
+ * array ringbuffer.
+ *
+ * Each data block consists of an ID followed by the raw data. The ID is the
+ * identifier of a descriptor that is associated with the data block. A data
+ * block is considered valid if all of the following conditions are met:
+ *
+ *   1) The descriptor associated with the data block is in the committed
+ *      or reusable queried state.
+ *
+ *   2) The blk_lpos struct within the descriptor associated with the data
+ *      block references back to the same data block.
+ *
+ *   3) The data block is within the head/tail logical position range.
+ *
+ * If the raw data of a data block would extend beyond the end of the byte
+ * array, only the ID of the data block is stored at the logical position
+ * and the full data block (ID and raw data) is stored at the beginning of
+ * the byte array. The referencing blk_lpos will point to the ID before the
+ * wrap and the next data block will be at the logical position adjacent the
+ * full data block after the wrap.
+ *
+ * Data rings have a @tail_lpos that points to the beginning of the oldest
+ * data block and a @head_lpos that points to the logical position of the
+ * next (not yet existing) data block.
+ *
+ * When a new data block should be created (and the ring is full), tail data
+ * blocks will first be invalidated by putting their associated descriptors
+ * into the reusable state and then pushing the @tail_lpos forward beyond
+ * them. Then the @head_lpos is pushed forward and is associated with a new
+ * descriptor. If a data block is not valid, the @tail_lpos cannot be
+ * advanced beyond it.
+ *
+ * Usage
+ * -----
+ * Here are some simple examples demonstrating writers and readers. For the
+ * examples a global ringbuffer (test_rb) is available (which is not the
+ * actual ringbuffer used by printk)::
+ *
+ *	DECLARE_PRINTKRB(test_rb, 15, 5, 3);
+ *
+ * This ringbuffer allows up to 32768 records (2 ^ 15) and has a size of
+ * 1 MiB (2 ^ (15 + 5)) for text data and 256 KiB (2 ^ (15 + 3)) for
+ * dictionary data.
+ *
+ * Sample writer code::
+ *
+ *	const char *dictstr = "dictionary text";
+ *	const char *textstr = "message text";
+ *	struct prb_reserved_entry e;
+ *	struct printk_record r;
+ *
+ *	// specify how much to allocate
+ *	prb_rec_init_wr(&r, strlen(textstr) + 1, strlen(dictstr) + 1);
+ *
+ *	if (prb_reserve(&e, &test_rb, &r)) {
+ *		snprintf(r.text_buf, r.text_buf_size, "%s", textstr);
+ *
+ *		// dictionary allocation may have failed
+ *		if (r.dict_buf)
+ *			snprintf(r.dict_buf, r.dict_buf_size, "%s", dictstr);
+ *
+ *		r.info->ts_nsec = local_clock();
+ *
+ *		prb_commit(&e);
+ *	}
+ *
+ * Sample reader code::
+ *
+ *	struct printk_info info;
+ *	struct printk_record r;
+ *	char text_buf[32];
+ *	char dict_buf[32];
+ *	u64 seq;
+ *
+ *	prb_rec_init_rd(&r, &info, &text_buf[0], sizeof(text_buf),
+ *			&dict_buf[0], sizeof(dict_buf));
+ *
+ *	prb_for_each_record(0, &test_rb, &seq, &r) {
+ *		if (info.seq != seq)
+ *			pr_warn("lost %llu records\n", info.seq - seq);
+ *
+ *		if (info.text_len > r.text_buf_size) {
+ *			pr_warn("record %llu text truncated\n", info.seq);
+ *			text_buf[sizeof(text_buf) - 1] = 0;
+ *		}
+ *
+ *		if (info.dict_len > r.dict_buf_size) {
+ *			pr_warn("record %llu dict truncated\n", info.seq);
+ *			dict_buf[sizeof(dict_buf) - 1] = 0;
+ *		}
+ *
+ *		pr_info("%llu: %llu: %s;%s\n", info.seq, info.ts_nsec,
+ *			&text_buf[0], info.dict_len ? &dict_buf[0] : "");
+ *	}
+ */
+
+#define DATA_SIZE(data_ring)		_DATA_SIZE((data_ring)->size_bits)
+#define DATA_SIZE_MASK(data_ring)	(DATA_SIZE(data_ring) - 1)
+
+#define DESCS_COUNT(desc_ring)		_DESCS_COUNT((desc_ring)->count_bits)
+#define DESCS_COUNT_MASK(desc_ring)	(DESCS_COUNT(desc_ring) - 1)
+
+/* Determine the data array index from a logical position. */
+#define DATA_INDEX(data_ring, lpos)	((lpos) & DATA_SIZE_MASK(data_ring))
+
+/* Determine the desc array index from an ID or sequence number. */
+#define DESC_INDEX(desc_ring, n)	((n) & DESCS_COUNT_MASK(desc_ring))
+
+/* Determine how many times the data array has wrapped. */
+#define DATA_WRAPS(data_ring, lpos)	((lpos) >> (data_ring)->size_bits)
+
+/* Get the logical position at index 0 of the current wrap. */
+#define DATA_THIS_WRAP_START_LPOS(data_ring, lpos) \
+	((lpos) & ~DATA_SIZE_MASK(data_ring))
+
+/* Get the ID for the same index of the previous wrap as the given ID. */
+#define DESC_ID_PREV_WRAP(desc_ring, id) \
+	DESC_ID((id) - DESCS_COUNT(desc_ring))
+
+/* A data block: maps to the raw data within the data ring. */
+struct prb_data_block {
+	unsigned long	id;
+	char		data[0];
+};
+
+static struct prb_desc *to_desc(struct prb_desc_ring *desc_ring, u64 n)
+{
+	return &desc_ring->descs[DESC_INDEX(desc_ring, n)];
+}
+
+static struct prb_data_block *to_block(struct prb_data_ring *data_ring,
+				       unsigned long begin_lpos)
+{
+	return (void *)&data_ring->data[DATA_INDEX(data_ring, begin_lpos)];
+}
+
+/*
+ * Increase the data size to account for data block meta data plus any
+ * padding so that the adjacent data block is aligned on the ID size.
+ */
+static unsigned long to_blk_size(unsigned long size)
+{
+	struct prb_data_block *db = NULL;
+
+	size += sizeof(*db);
+	size = ALIGN(size, sizeof(db->id));
+	return size;
+}
+
+/*
+ * Sanity checker for reserve size. The ringbuffer code assumes that a data
+ * block does not exceed the maximum possible size that could fit within the
+ * ringbuffer. This function provides that basic size check so that the
+ * assumption is safe.
+ *
+ * Writers are also not allowed to write 0-sized (data-less) records. Such
+ * records are used only internally by the ringbuffer.
+ */
+static bool data_check_size(struct prb_data_ring *data_ring, unsigned int size)
+{
+	struct prb_data_block *db = NULL;
+
+	/*
+	 * Writers are not allowed to write data-less records. Such records
+	 * are used only internally by the ringbuffer to denote records where
+	 * their data failed to allocate or have been lost.
+	 */
+	if (size == 0)
+		return false;
+
+	/*
+	 * Ensure the alignment padded size could possibly fit in the data
+	 * array. The largest possible data block must still leave room for
+	 * at least the ID of the next block.
+	 */
+	size = to_blk_size(size);
+	if (size > DATA_SIZE(data_ring) - sizeof(db->id))
+		return false;
+
+	return true;
+}
+
+/* The possible responses of a descriptor state-query. */
+enum desc_state {
+	desc_miss,	/* ID mismatch */
+	desc_reserved,	/* reserved, in use by writer */
+	desc_committed, /* committed, writer is done */
+	desc_reusable,	/* free, not yet used by any writer */
+};
+
+/* Query the state of a descriptor. */
+static enum desc_state get_desc_state(unsigned long id,
+				      unsigned long state_val)
+{
+	if (id != DESC_ID(state_val))
+		return desc_miss;
+
+	if (state_val & DESC_REUSE_MASK)
+		return desc_reusable;
+
+	if (state_val & DESC_COMMITTED_MASK)
+		return desc_committed;
+
+	return desc_reserved;
+}
+
+/*
+ * Get a copy of a specified descriptor and its queried state. A descriptor
+ * that is not in the committed or reusable state must be considered garbage
+ * by the reader.
+ */
+static enum desc_state desc_read(struct prb_desc_ring *desc_ring,
+				 unsigned long id, struct prb_desc *desc_out)
+{
+	struct prb_desc *desc = to_desc(desc_ring, id);
+	atomic_long_t *state_var = &desc->state_var;
+	enum desc_state d_state;
+	unsigned long state_val;
+
+	/* Check the descriptor state. */
+	state_val = atomic_long_read(state_var); /* LMM(desc_read:A) */
+	d_state = get_desc_state(id, state_val);
+	if (d_state != desc_committed && d_state != desc_reusable)
+		return d_state;
+
+	/*
+	 * Guarantee the state is loaded before copying the descriptor. This
+	 * avoids copying obsolete descriptor data that might not apply to
+	 * the descriptor state. This pairs with prb_commit:B.
+	 *
+	 * Memory barrier involvement:
+	 *
+	 * If desc_read:A reads from prb_commit:C, then desc_read:C reads
+	 * from prb_commit:A.
+	 *
+	 * Relies on:
+	 *
+	 * WMB from prb_commit:A to prb_commit:C
+	 *    matching
+	 * RMB from desc_read:A to desc_read:C
+	 */
+	smp_rmb(); /* LMM(desc_read:B) */
+
+	/* Copy the descriptor data. */
+	*desc_out = READ_ONCE(*desc); /* LMM(desc_read:C) */
+
+	/*
+	 * Guarantee the descriptor and/or record data is loaded before
+	 * re-checking the state. This avoids reading an obsolete descriptor
+	 * state that may not apply to the copied data. For copying descriptor
+	 * data, this pairs with desc_reserve:H when a descriptor transitions
+	 * to reserved. For copying record data, this pairs with
+	 * data_push_tail:C when a descriptor transitions to reusable.
+	 *
+	 * Memory barrier involvement:
+	 *
+	 * 1. If desc_read:C reads from desc_reserve:I, then desc_read:E reads
+	 *    from desc_reserve:G.
+	 *
+	 *    Relies on:
+	 *
+	 *    WMB from desc_reserve:G to desc_reserve:I
+	 *       matching
+	 *    RMB from desc_read:C to desc_read:E
+	 *
+	 * 2. If desc_read:C reads from data_push_tail:D, then desc_read:E
+	 *    reads from desc_make_reusable:A.
+	 *
+	 *    Relies on:
+	 *
+	 *    MB from desc_make_reusable:A to data_push_tail:D
+	 *       matching
+	 *    RMB from desc_read:C to desc_read:E
+	 *
+	 *    Note: desc_make_reusable:A and data_push_tail:D can be
+	 *          different CPUs. However, the data_push_tail:D CPU
+	 *          (which performs the full memory barrier) must have
+	 *          previously seen desc_make_reusable:A.
+	 */
+	smp_rmb(); /* LMM(desc_read:D) */
+
+	/* Re-check the descriptor state. */
+	state_val = atomic_long_read(state_var); /* LMM(desc_read:E) */
+	return get_desc_state(id, state_val);
+}
+
+/*
+ * Take a specified descriptor out of the committed state by attempting
+ * the transition from committed to reusable. Either this task or some
+ * other task will have been successful.
+ */
+static void desc_make_reusable(struct prb_desc_ring *desc_ring,
+			       unsigned long id)
+{
+	unsigned long val_committed = id | DESC_COMMITTED_MASK;
+	unsigned long val_reusable = val_committed | DESC_REUSE_MASK;
+	struct prb_desc *desc = to_desc(desc_ring, id);
+	atomic_long_t *state_var = &desc->state_var;
+
+	atomic_long_cmpxchg_relaxed(state_var, val_committed,
+				val_reusable); /* LMM(desc_make_reusable:A) */
+}
+
+/*
+ * Given a data ring (text or dict), put the associated descriptor of each
+ * data block from @lpos_begin until @lpos_end into the reusable state.
+ *
+ * If there is any problem making the associated descriptor reusable, either
+ * the descriptor has not yet been committed or another writer task has
+ * already pushed the tail lpos past the problematic data block. Regardless,
+ * on error the caller can re-load the tail lpos to determine the situation.
+ */
+static bool data_make_reusable(struct printk_ringbuffer *rb,
+			       struct prb_data_ring *data_ring,
+			       unsigned long lpos_begin,
+			       unsigned long lpos_end,
+			       unsigned long *lpos_out)
+{
+	struct prb_desc_ring *desc_ring = &rb->desc_ring;
+	struct prb_data_blk_lpos *blk_lpos;
+	struct prb_data_block *blk;
+	unsigned long tail_lpos;
+	enum desc_state d_state;
+	struct prb_desc desc;
+	unsigned long id;
+
+	/*
+	 * Using the provided @data_ring, point @blk_lpos to the correct
+	 * blk_lpos within the local copy of the descriptor.
+	 */
+	if (data_ring == &rb->text_data_ring)
+		blk_lpos = &desc.text_blk_lpos;
+	else
+		blk_lpos = &desc.dict_blk_lpos;
+
+	/* Loop until @lpos_begin has advanced to or beyond @lpos_end. */
+	while ((lpos_end - lpos_begin) - 1 < DATA_SIZE(data_ring)) {
+		blk = to_block(data_ring, lpos_begin);
+		id = READ_ONCE(blk->id); /* LMM(data_make_reusable:A) */
+
+		/*
+		 * Guarantee the block ID is loaded before checking the tail
+		 * lpos. The loaded block ID can only be considered valid if
+		 * the tail lpos has not overtaken @lpos_begin. This pairs
+		 * with data_alloc:A.
+		 *
+		 * Memory barrier involvement:
+		 *
+		 * If data_make_reusable:A reads from data_alloc:B, then
+		 * data_make_reusable:C reads from data_push_tail:D.
+		 *
+		 * Relies on:
+		 *
+		 * MB from data_push_tail:D to data_alloc:B
+		 *    matching
+		 * RMB from data_make_reusable:A to data_make_reusable:C
+		 *
+		 * Note: data_push_tail:D and data_alloc:B can be different
+		 *       CPUs. However, the data_alloc:B CPU (which performs
+		 *       the full memory barrier) must have previously seen
+		 *       data_push_tail:D.
+		 */
+		smp_rmb(); /* LMM(data_make_reusable:B) */
+
+		tail_lpos = atomic_long_read(&data_ring->tail_lpos
+					); /* LMM(data_make_reusable:C) */
+
+		/*
+		 * If @lpos_begin has fallen behind the tail lpos, the read
+		 * block ID cannot be trusted. Fast forward @lpos_begin to the
+		 * tail lpos and try again.
+		 */
+		if (lpos_begin - tail_lpos >= DATA_SIZE(data_ring)) {
+			lpos_begin = tail_lpos;
+			continue;
+		}
+
+		d_state = desc_read(desc_ring, id,
+				    &desc); /* LMM(data_make_reusable:D) */
+
+		switch (d_state) {
+		case desc_miss:
+			return false;
+		case desc_reserved:
+			return false;
+		case desc_committed:
+			/*
+			 * This data block is invalid if the descriptor
+			 * does not point back to it.
+			 */
+			if (blk_lpos->begin != lpos_begin)
+				return false;
+			desc_make_reusable(desc_ring, id);
+			break;
+		case desc_reusable:
+			/*
+			 * This data block is invalid if the descriptor
+			 * does not point back to it.
+			 */
+			if (blk_lpos->begin != lpos_begin)
+				return false;
+			break;
+		}
+
+		/* Advance @lpos_begin to the next data block. */
+		lpos_begin = blk_lpos->next;
+	}
+
+	*lpos_out = lpos_begin;
+	return true;
+}
+
+/*
+ * Advance the data ring tail to at least @lpos. This function puts
+ * descriptors into the reusable state if the tail is pushed beyond
+ * their associated data block.
+ */
+static bool data_push_tail(struct printk_ringbuffer *rb,
+			   struct prb_data_ring *data_ring,
+			   unsigned long lpos)
+{
+	unsigned long tail_lpos;
+	unsigned long next_lpos;
+
+	/* If @lpos is not valid, there is nothing to do. */
+	if (lpos == INVALID_LPOS)
+		return true;
+
+	tail_lpos = atomic_long_read(&data_ring->tail_lpos);
+
+	do {
+		/* Done, if the tail lpos is already at or beyond @lpos. */
+		if ((lpos - tail_lpos) - 1 >= DATA_SIZE(data_ring))
+			break;
+
+		/*
+		 * Make all descriptors reusable that are associated with
+		 * data blocks before @lpos.
+		 */
+		if (!data_make_reusable(rb, data_ring, tail_lpos, lpos,
+					&next_lpos)) {
+			/*
+			 * Guarantee the descriptor state loaded in
+			 * data_make_reusable() is performed before reloading
+			 * the tail lpos. The failed data_make_reusable() may
+			 * be due to a newly recycled descriptor causing
+			 * the tail lpos to have been previously pushed. This
+			 * pairs with desc_reserve:D.
+			 *
+			 * Memory barrier involvement:
+			 *
+			 * If data_make_reusable:D reads from desc_reserve:G,
+			 * then data_push_tail:B reads from data_push_tail:D.
+			 *
+			 * Relies on:
+			 *
+			 * MB from data_push_tail:D to desc_reserve:G
+			 *    matching
+			 * RMB from data_make_reusable:D to data_push_tail:B
+			 *
+			 * Note: data_push_tail:D and desc_reserve:G can be
+			 *       different CPUs. However, the desc_reserve:G
+			 *       CPU (which performs the full memory barrier)
+			 *       must have previously seen data_push_tail:D.
+			 */
+			smp_rmb(); /* LMM(data_push_tail:A) */
+
+			next_lpos = atomic_long_read(&data_ring->tail_lpos
+						); /* LMM(data_push_tail:B) */
+			if (next_lpos == tail_lpos)
+				return false;
+
+			/* Another task pushed the tail. Try again. */
+			tail_lpos = next_lpos;
+			continue;
+		}
+
+		/*
+		 * Guarantee any descriptor states that have transitioned to
+		 * reusable are stored before pushing the tail lpos. This
+		 * allows readers to identify if data has expired while
+		 * reading the descriptor. This pairs with desc_read:D.
+		 */
+		smp_mb(); /* LMM(data_push_tail:C) */
+
+	} while (!atomic_long_try_cmpxchg_relaxed(&data_ring->tail_lpos,
+			&tail_lpos, next_lpos)); /* LMM(data_push_tail:D) */
+
+	return true;
+}
+
+/*
+ * Advance the desc ring tail. This function advances the tail by one
+ * descriptor, thus invalidating the oldest descriptor. Before advancing
+ * the tail, the tail descriptor is made reusable and all data blocks up to
+ * and including the descriptor's data block are invalidated (i.e. the data
+ * ring tail is pushed past the data block of the descriptor being made
+ * reusable).
+ */
+static bool desc_push_tail(struct printk_ringbuffer *rb,
+			   unsigned long tail_id)
+{
+	struct prb_desc_ring *desc_ring = &rb->desc_ring;
+	enum desc_state d_state;
+	struct prb_desc desc;
+
+	d_state = desc_read(desc_ring, tail_id, &desc);
+
+	switch (d_state) {
+	case desc_miss:
+		/*
+		 * If the ID is exactly 1 wrap behind the expected, it is
+		 * in the process of being reserved by another writer and
+		 * must be considered reserved.
+		 */
+		if (DESC_ID(atomic_long_read(&desc.state_var)) ==
+		    DESC_ID_PREV_WRAP(desc_ring, tail_id)) {
+			return false;
+		}
+
+		/*
+		 * The ID has changed. Another writer must have pushed the
+		 * tail and recycled the descriptor already. Success is
+		 * returned because the caller is only interested in the
+		 * specified tail being pushed, which it was.
+		 */
+		return true;
+	case desc_reserved:
+		return false;
+	case desc_committed:
+		desc_make_reusable(desc_ring, tail_id);
+		break;
+	case desc_reusable:
+		break;
+	}
+
+	/*
+	 * Data blocks must be invalidated before their associated
+	 * descriptor can be made available for recycling. Invalidating
+	 * them later is not possible because there is no way to trust
+	 * data blocks once their associated descriptor is gone.
+	 */
+
+	if (!data_push_tail(rb, &rb->text_data_ring, desc.text_blk_lpos.next))
+		return false;
+	if (!data_push_tail(rb, &rb->dict_data_ring, desc.dict_blk_lpos.next))
+		return false;
+
+	/*
+	 * Check the next descriptor after @tail_id before pushing the tail
+	 * to it because the tail must always be in a committed or reusable
+	 * state. The implementation of prb_first_seq() relies on this.
+	 *
+	 * A successful read implies that the next descriptor is less than or
+	 * equal to @head_id so there is no risk of pushing the tail past the
+	 * head.
+	 */
+	d_state = desc_read(desc_ring, DESC_ID(tail_id + 1),
+			    &desc); /* LMM(desc_push_tail:A) */
+	if (d_state == desc_committed || d_state == desc_reusable) {
+		/*
+		 * Any CPU that loads the new tail ID, must see that the
+		 * descriptor at @tail_id is in the reusable state. See the
+		 * read memory barrier part of desc_reserve:D for details.
+		 */
+		atomic_long_cmpxchg_relaxed(&desc_ring->tail_id, tail_id,
+			DESC_ID(tail_id + 1)); /* LMM(desc_push_tail:B) */
+	} else {
+		/*
+		 * Guarantee the last state load from desc_read() is before
+		 * reloading @tail_id in order to see a new tail ID in the
+		 * case that the descriptor has been recycled. This pairs
+		 * with desc_reserve:D.
+		 *
+		 * Memory barrier involvement:
+		 *
+		 * If desc_push_tail:A reads from desc_reserve:G, then
+		 * desc_push_tail:D reads from desc_push_tail:B.
+		 *
+		 * Relies on:
+		 *
+		 * MB from desc_push_tail:B to desc_reserve:G
+		 *    matching
+		 * RMB from desc_push_tail:A to desc_push_tail:D
+		 *
+		 * Note: desc_push_tail:B and desc_reserve:G can be different
+		 *       CPUs. However, the desc_reserve:G CPU (which performs
+		 *       the full memory barrier) must have previously seen
+		 *       desc_push_tail:B.
+		 */
+		smp_rmb(); /* LMM(desc_push_tail:C) */
+
+		/*
+		 * Re-check the tail ID. The descriptor following @tail_id is
+		 * not in an allowed tail state. But if the tail has since
+		 * been moved by another task, then it does not matter.
+		 */
+		if (atomic_long_read(&desc_ring->tail_id) ==
+					tail_id) { /* LMM(desc_push_tail:D) */
+			return false;
+		}
+	}
+
+	return true;
+}
+
+/* Reserve a new descriptor, invalidating the oldest if necessary. */
+static bool desc_reserve(struct printk_ringbuffer *rb, unsigned long *id_out)
+{
+	struct prb_desc_ring *desc_ring = &rb->desc_ring;
+	unsigned long prev_state_val;
+	unsigned long id_prev_wrap;
+	struct prb_desc *desc;
+	unsigned long head_id;
+	unsigned long id;
+
+	head_id = atomic_long_read(&desc_ring->head_id
+						); /* LMM(desc_reserve:A) */
+
+	do {
+		desc = to_desc(desc_ring, head_id);
+
+		id = DESC_ID(head_id + 1);
+		id_prev_wrap = DESC_ID_PREV_WRAP(desc_ring, id);
+
+		/*
+		 * Guarantee the head ID is read before reading the tail ID.
+		 * Since the tail ID is updated before the head ID, this
+		 * guarantees that @id_prev_wrap is never ahead of the tail
+		 * ID. This pairs with desc_reserve:D.
+		 *
+		 * Memory barrier involvement:
+		 *
+		 * If desc_reserve:A reads from desc_reserve:E, then
+		 * desc_reserve:C reads from desc_push_tail:B.
+		 *
+		 * Relies on:
+		 *
+		 * MB from desc_push_tail:B to desc_reserve:E
+		 *    matching
+		 * RMB from desc_reserve:A to desc_reserve:C
+		 *
+		 * Note: desc_push_tail:B and desc_reserve:E can be different
+		 *       CPUs. However, the desc_reserve:E CPU (which performs
+		 *       the full memory barrier) must have previously seen
+		 *       desc_push_tail:B.
+		 */
+		smp_rmb(); /* LMM(desc_reserve:B) */
+
+		if (id_prev_wrap == atomic_long_read(&desc_ring->tail_id
+						)) { /* LMM(desc_reserve:C) */
+			/*
+			 * Make space for the new descriptor by
+			 * advancing the tail.
+			 */
+			if (!desc_push_tail(rb, id_prev_wrap))
+				return false;
+		}
+
+		/*
+		 * Guarantee the tail ID is read before validating the
+		 * recycled descriptor state. A read memory barrier is
+		 * sufficient for this. This pairs with data_push_tail:C.
+		 *
+		 * Memory barrier involvement:
+		 *
+		 * If desc_reserve:C reads from desc_push_tail:B, then
+		 * desc_reserve:F reads from desc_make_reusable:A.
+		 *
+		 * Relies on:
+		 *
+		 * MB from desc_make_reusable:A to desc_push_tail:B
+		 *    matching
+		 * RMB from desc_reserve:C to desc_reserve:F
+		 *
+		 * Note: desc_make_reusable:A, desc_push_tail:B, and
+		 *       data_push_tail:C can all be different CPUs. However,
+		 *       the desc_push_tail:B CPU must have previously seen
+		 *       data_push_tail:D and the data_push_tail:D CPU (which
+		 *       performs the full memory barrier) must have
+		 *       previously seen desc_make_reusable:A.
+		 *
+		 * Guarantee any data ring tail changes are stored before
+		 * recycling the descriptor. Data ring tail changes can happen
+		 * via desc_push_tail()->data_push_tail(). A full memory
+		 * barrier is needed since another task may have pushed the
+		 * data ring tails. This pairs with data_push_tail:A.
+		 *
+		 * Guarantee a new tail ID is stored before recycling the
+		 * descriptor. A full memory barrier is needed since another
+		 * task may have pushed the tail ID. This pairs with
+		 * desc_push_tail:C and prb_first_seq:C.
+		 *
+		 * Guarantee the tail ID is stored before storing the head ID.
+		 * This pairs with desc_reserve:B.
+		 */
+		smp_mb(); /* LMM(desc_reserve:D) */
+
+	} while (!atomic_long_try_cmpxchg_relaxed(&desc_ring->head_id,
+				&head_id, id)); /* LMM(desc_reserve:E) */
+
+	desc = to_desc(desc_ring, id);
+
+	/*
+	 * If the descriptor has been recycled, verify the old state val.
+	 * See "ABA Issues" about why this verification is performed.
+	 */
+	prev_state_val = atomic_long_read(&desc->state_var
+						); /* LMM(desc_reserve:F) */
+	if (prev_state_val && prev_state_val != (id_prev_wrap |
+						 DESC_COMMITTED_MASK |
+						 DESC_REUSE_MASK)) {
+		WARN_ON_ONCE(1);
+		return false;
+	}
+
+	/*
+	 * Assign the descriptor a new ID and set its state to reserved.
+	 * See "ABA Issues" about why cmpxchg() instead of set() is used.
+	 */
+	if (!atomic_long_try_cmpxchg_relaxed(&desc->state_var,
+			&prev_state_val, id | 0)) { /* LMM(desc_reserve:G) */
+		WARN_ON_ONCE(1);
+		return false;
+	}
+
+	/*
+	 * Guarantee the new descriptor ID and state is stored before making
+	 * any other changes. This pairs with desc_read:D.
+	 */
+	smp_wmb(); /* LMM(desc_reserve:H) */
+
+	/* Now data in @desc can be modified: LMM(desc_reserve:I) */
+
+	*id_out = id;
+	return true;
+}
+
+/* Determine the end of a data block. */
+static unsigned long get_next_lpos(struct prb_data_ring *data_ring,
+				   unsigned long lpos, unsigned int size)
+{
+	unsigned long begin_lpos;
+	unsigned long next_lpos;
+
+	begin_lpos = lpos;
+	next_lpos = lpos + size;
+
+	if (DATA_WRAPS(data_ring, begin_lpos) ==
+	    DATA_WRAPS(data_ring, next_lpos)) {
+		/* The data block does not wrap. */
+		return next_lpos;
+	}
+
+	/* Wrapping data blocks store their data at the beginning. */
+	return (DATA_THIS_WRAP_START_LPOS(data_ring, next_lpos) + size);
+}
+
+/*
+ * Allocate a new data block, invalidating the oldest data block(s)
+ * if necessary. This function also associates the data block with
+ * a specified descriptor.
+ */
+static char *data_alloc(struct printk_ringbuffer *rb,
+			struct prb_data_ring *data_ring, unsigned long size,
+			struct prb_data_blk_lpos *blk_lpos, unsigned long id)
+{
+	struct prb_data_block *blk;
+	unsigned long begin_lpos;
+	unsigned long next_lpos;
+
+	if (!data_ring->data || size == 0) {
+		/* Specify a data-less block. */
+		blk_lpos->begin = INVALID_LPOS;
+		blk_lpos->next = INVALID_LPOS;
+		return NULL;
+	}
+
+	size = to_blk_size(size);
+
+	begin_lpos = atomic_long_read(&data_ring->head_lpos);
+
+	do {
+		next_lpos = get_next_lpos(data_ring, begin_lpos, size);
+
+		if (!data_push_tail(rb, data_ring,
+				    next_lpos - DATA_SIZE(data_ring))) {
+			/* Failed to allocate, specify a data-less block. */
+			blk_lpos->begin = INVALID_LPOS;
+			blk_lpos->next = INVALID_LPOS;
+			return NULL;
+		}
+	} while (!atomic_long_try_cmpxchg_relaxed(&data_ring->head_lpos,
+						  &begin_lpos, next_lpos));
+
+	/*
+	 * Guarantee any updated tail lpos is stored before setting the new
+	 * block ID. This allows block IDs to be trusted based on the tail
+	 * lpos. A full memory barrier is needed since another task may
+	 * have updated the tail lpos. This pairs with data_make_reusable:B.
+	 */
+	smp_mb(); /* LMM(data_alloc:A) */
+
+	blk = to_block(data_ring, begin_lpos);
+	WRITE_ONCE(blk->id, id); /* LMM(data_alloc:B) */
+
+	if (DATA_WRAPS(data_ring, begin_lpos) !=
+	    DATA_WRAPS(data_ring, next_lpos)) {
+		/* Wrapping data blocks store their data at the beginning. */
+		blk = to_block(data_ring, 0);
+
+		/*
+		 * Store the ID on the wrapped block for consistency.
+		 * The printk_ringbuffer does not actually use it.
+		 */
+		blk->id = id;
+	}
+
+	blk_lpos->begin = begin_lpos;
+	blk_lpos->next = next_lpos;
+
+	return &blk->data[0];
+}
+
+/* Return the number of bytes used by a data block. */
+static unsigned int space_used(struct prb_data_ring *data_ring,
+			       struct prb_data_blk_lpos *blk_lpos)
+{
+	if (DATA_WRAPS(data_ring, blk_lpos->begin) ==
+	    DATA_WRAPS(data_ring, blk_lpos->next)) {
+		return (DATA_INDEX(data_ring, blk_lpos->next) -
+			DATA_INDEX(data_ring, blk_lpos->begin));
+	}
+
+	/*
+	 * For wrapping data blocks, the trailing (wasted) space is
+	 * also counted.
+	 */
+	return (DATA_INDEX(data_ring, blk_lpos->next) +
+		DATA_SIZE(data_ring) -
+		DATA_INDEX(data_ring, blk_lpos->begin));
+}
+
+/**
+ * prb_reserve() - Reserve space in the ringbuffer.
+ *
+ * @e:  The entry structure to setup.
+ * @rb: The ringbuffer to reserve data in.
+ * @r:  The record structure to allocate buffers for.
+ *
+ * This is the public function available to writers to reserve data.
+ *
+ * The writer specifies the text and dict sizes to reserve by setting the
+ * @text_buf_size and @dict_buf_size fields of @r, respectively. Dictionaries
+ * are optional, so @dict_buf_size is allowed to be 0. To ensure proper
+ * initialization of @r, prb_rec_init_wr() should be used.
+ *
+ * Context: Any context. Disables local interrupts on success.
+ * Return: true if at least text data could be allocated, otherwise false.
+ *
+ * On success, the fields @info, @text_buf, @dict_buf of @r will be set by
+ * this function and should be filled in by the writer before committing. Also
+ * on success, prb_record_text_space() can be used on @e to query the actual
+ * space used for the text data block.
+ *
+ * If the function fails to reserve dictionary space (but all else succeeded),
+ * it will still report success. In that case @dict_buf is set to NULL and
+ * @dict_buf_size is set to 0. Writers must check this before writing to
+ * dictionary space.
+ *
+ * @info->text_len and @info->dict_len will already be set to @text_buf_size
+ * and @dict_buf_size, respectively. If dictionary space reserveration fails,
+ * @info->dict_len is set to 0.
+ */
+bool prb_reserve(struct prb_reserved_entry *e, struct printk_ringbuffer *rb,
+		 struct printk_record *r)
+{
+	struct prb_desc_ring *desc_ring = &rb->desc_ring;
+	struct prb_desc *d;
+	unsigned long id;
+
+	if (!data_check_size(&rb->text_data_ring, r->text_buf_size))
+		goto fail;
+
+	/* Records without dictionaries are allowed. */
+	if (r->dict_buf_size) {
+		if (!data_check_size(&rb->dict_data_ring, r->dict_buf_size))
+			goto fail;
+	}
+
+	/*
+	 * Descriptors in the reserved state act as blockers to all further
+	 * reservations once the desc_ring has fully wrapped. Disable
+	 * interrupts during the reserve/commit window in order to minimize
+	 * the likelihood of this happening.
+	 */
+	local_irq_save(e->irqflags);
+
+	if (!desc_reserve(rb, &id)) {
+		/* Descriptor reservation failures are tracked. */
+		atomic_long_inc(&rb->fail);
+		local_irq_restore(e->irqflags);
+		goto fail;
+	}
+
+	d = to_desc(desc_ring, id);
+
+	/*
+	 * Set the @e fields here so that prb_commit() can be used if
+	 * text data allocation fails.
+	 */
+	e->rb = rb;
+	e->id = id;
+
+	/*
+	 * Initialize the sequence number if it has "never been set".
+	 * Otherwise just increment it by a full wrap.
+	 *
+	 * @seq is considered "never been set" if it has a value of 0,
+	 * _except_ for @descs[0], which was specially setup by the ringbuffer
+	 * initializer and therefore is always considered as set.
+	 *
+	 * See the "Bootstrap" comment block in printk_ringbuffer.h for
+	 * details about how the initializer bootstraps the descriptors.
+	 */
+	if (d->info.seq == 0 && DESC_INDEX(desc_ring, id) != 0)
+		d->info.seq = DESC_INDEX(desc_ring, id);
+	else
+		d->info.seq += DESCS_COUNT(desc_ring);
+
+	r->text_buf = data_alloc(rb, &rb->text_data_ring, r->text_buf_size,
+				 &d->text_blk_lpos, id);
+	/* If text data allocation fails, a data-less record is committed. */
+	if (r->text_buf_size && !r->text_buf) {
+		d->info.text_len = 0;
+		d->info.dict_len = 0;
+		prb_commit(e);
+		/* prb_commit() re-enabled interrupts. */
+		goto fail;
+	}
+
+	r->dict_buf = data_alloc(rb, &rb->dict_data_ring, r->dict_buf_size,
+				 &d->dict_blk_lpos, id);
+	/*
+	 * If dict data allocation fails, the caller can still commit
+	 * text. But dictionary information will not be available.
+	 */
+	if (r->dict_buf_size && !r->dict_buf)
+		r->dict_buf_size = 0;
+
+	r->info = &d->info;
+
+	/* Set default values for the sizes. */
+	d->info.text_len = r->text_buf_size;
+	d->info.dict_len = r->dict_buf_size;
+
+	/* Record full text space used by record. */
+	e->text_space = space_used(&rb->text_data_ring, &d->text_blk_lpos);
+
+	return true;
+fail:
+	/* Make it clear to the caller that the reserve failed. */
+	memset(r, 0, sizeof(*r));
+	return false;
+}
+
+/**
+ * prb_commit() - Commit (previously reserved) data to the ringbuffer.
+ *
+ * @e: The entry containing the reserved data information.
+ *
+ * This is the public function available to writers to commit data.
+ *
+ * Context: Any context. Enables local interrupts.
+ */
+void prb_commit(struct prb_reserved_entry *e)
+{
+	struct prb_desc_ring *desc_ring = &e->rb->desc_ring;
+	struct prb_desc *d = to_desc(desc_ring, e->id);
+	unsigned long prev_state_val = e->id | 0;
+
+	/* Now the writer has finished all writing: LMM(prb_commit:A) */
+
+	/*
+	 * Guarantee all record data is stored before the descriptor
+	 * state is stored as committed. This pairs with desc_read:B.
+	 */
+	smp_wmb(); /* LMM(prb_commit:B) */
+
+	/*
+	 * Set the descriptor as committed.
+	 * See "ABA Issues" about why cmpxchg() instead of set() is used.
+	 */
+	if (!atomic_long_try_cmpxchg_relaxed(&d->state_var, &prev_state_val,
+		e->id | DESC_COMMITTED_MASK)) { /* LMM(prb_commit:C) */
+		WARN_ON_ONCE(1);
+	}
+
+	/* Restore interrupts, the reserve/commit window is finished. */
+	local_irq_restore(e->irqflags);
+}
+
+/*
+ * Given @blk_lpos, return a pointer to the raw data from the data block
+ * and calculate the size of the data part. A NULL pointer is returned
+ * if @blk_lpos specifies values that could never be legal.
+ *
+ * This function (used by readers) performs strict validation on the lpos
+ * values to possibly detect bugs in the writer code. A WARN_ON_ONCE() is
+ * triggered if an internal error is detected.
+ */
+static char *get_data(struct prb_data_ring *data_ring,
+		      struct prb_data_blk_lpos *blk_lpos,
+		      unsigned long *data_size)
+{
+	struct prb_data_block *db;
+
+	/* Data-less data block description. */
+	if (blk_lpos->begin == INVALID_LPOS &&
+	    blk_lpos->next == INVALID_LPOS) {
+		return NULL;
+	}
+
+	/* Regular data block: @begin less than @next and in same wrap. */
+	if (DATA_WRAPS(data_ring, blk_lpos->begin) ==
+	    DATA_WRAPS(data_ring, blk_lpos->next) &&
+	    blk_lpos->begin < blk_lpos->next) {
+		db = to_block(data_ring, blk_lpos->begin);
+		*data_size = blk_lpos->next - blk_lpos->begin;
+
+	/* Wrapping data block: @begin is one wrap behind @next. */
+	} else if (DATA_WRAPS(data_ring,
+			      blk_lpos->begin + DATA_SIZE(data_ring)) ==
+		   DATA_WRAPS(data_ring, blk_lpos->next)) {
+		db = to_block(data_ring, 0);
+		*data_size = DATA_INDEX(data_ring, blk_lpos->next);
+
+	/* Illegal block description. */
+	} else {
+		WARN_ON_ONCE(1);
+		return NULL;
+	}
+
+	/* A valid data block will always be aligned to the ID size. */
+	if (WARN_ON_ONCE(blk_lpos->begin !=
+			 ALIGN(blk_lpos->begin, sizeof(db->id))) ||
+	    WARN_ON_ONCE(blk_lpos->next !=
+			 ALIGN(blk_lpos->next, sizeof(db->id)))) {
+		return NULL;
+	}
+
+	/* A valid data block will always have at least an ID. */
+	if (WARN_ON_ONCE(*data_size < sizeof(db->id)))
+		return NULL;
+
+	/* Subtract descriptor ID space from size to reflect data size. */
+	*data_size -= sizeof(db->id);
+
+	return &db->data[0];
+}
+
+/**
+ * prb_count_lines() - Count the number of lines in provided text.
+ *
+ * @text:      The text to count the lines of.
+ * @text_size: The size of the text to process.
+ *
+ * This is the public function available to readers to count the number of
+ * lines in a text string.
+ *
+ * Context: Any context.
+ * Return: The number of lines in the text.
+ *
+ * All text has at least 1 line (even if @text_size is 0). Each '\n'
+ * processed is counted as an additional line.
+ */
+unsigned int prb_count_lines(char *text, unsigned int text_size)
+{
+	unsigned long next_size = text_size;
+	unsigned int line_count = 1;
+	char *next = text;
+
+	while (next_size) {
+		next = memchr(next, '\n', next_size);
+		if (!next)
+			break;
+		line_count++;
+		next++;
+		next_size = text_size - (next - text);
+	}
+
+	return line_count;
+}
+
+/*
+ * Given @blk_lpos, copy an expected @len of data into the provided buffer.
+ * If @line_count is provided, count the number of lines in the data.
+ *
+ * This function (used by readers) performs strict validation on the data
+ * size to possibly detect bugs in the writer code. A WARN_ON_ONCE() is
+ * triggered if an internal error is detected.
+ */
+static bool copy_data(struct prb_data_ring *data_ring,
+		      struct prb_data_blk_lpos *blk_lpos, u16 len, char *buf,
+		      unsigned int buf_size, unsigned int *line_count)
+{
+	unsigned long data_size;
+	char *data;
+
+	/* Caller might not want any data. */
+	if ((!buf || !buf_size) && !line_count)
+		return true;
+
+	data = get_data(data_ring, blk_lpos, &data_size);
+	if (!data)
+		return false;
+
+	/*
+	 * Actual cannot be less than expected. It can be more than expected
+	 * because of the trailing alignment padding.
+	 */
+	if (WARN_ON_ONCE(data_size < (unsigned long)len)) {
+		pr_warn_once(
+		    "wrong data size (%lu, expecting %hu) for data: %.*s\n",
+		    data_size, len, (int)data_size, data);
+		return false;
+	}
+
+	/* Caller interested in the line count? */
+	if (line_count)
+		*line_count = prb_count_lines(data, data_size);
+
+	/* Caller interested in the data content? */
+	if (!buf || !buf_size)
+		return true;
+
+	data_size = min_t(u16, buf_size, len);
+
+	if (!WARN_ON_ONCE(!data_size))
+		memcpy(&buf[0], data, data_size);
+	return true;
+}
+
+/*
+ * This is an extended version of desc_read(). It gets a copy of a specified
+ * descriptor. However, it also verifies that the record is committed and has
+ * the sequence number @seq. On success, 0 is returned.
+ *
+ * Error return values:
+ * -EINVAL: A committed record with sequence number @seq does not exist.
+ * -ENOENT: A committed record with sequence number @seq exists, but its data
+ *          is not available. This is a valid record, so readers should
+ *          continue with the next record.
+ */
+static int desc_read_committed_seq(struct prb_desc_ring *desc_ring,
+				   unsigned long id, u64 seq,
+				   struct prb_desc *desc_out)
+{
+	struct prb_data_blk_lpos *blk_lpos = &desc_out->text_blk_lpos;
+	enum desc_state d_state;
+
+	d_state = desc_read(desc_ring, id, desc_out);
+
+	/*
+	 * An unexpeced @id (desc_miss) or @seq mismatch means the record
+	 * does not exist. A descriptor in the reserved state means the
+	 * record does not yet exist for the reader.
+	 */
+	if (d_state == desc_miss ||
+	    d_state == desc_reserved ||
+	    desc_out->info.seq != seq) {
+		return -EINVAL;
+	}
+
+	/*
+	 * A descriptor in the reusable state may no longer have its data
+	 * available; report it as a data-less record. Or the record may
+	 * actually be a data-less record.
+	 */
+	if (d_state == desc_reusable ||
+	    (blk_lpos->begin == INVALID_LPOS &&
+	     blk_lpos->next == INVALID_LPOS)) {
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
+/*
+ * Copy the ringbuffer data from the record with @seq to the provided
+ * @r buffer. On success, 0 is returned.
+ *
+ * See desc_read_committed_seq() for error return values.
+ */
+static int prb_read(struct printk_ringbuffer *rb, u64 seq,
+		    struct printk_record *r, unsigned int *line_count)
+{
+	struct prb_desc_ring *desc_ring = &rb->desc_ring;
+	struct prb_desc *rdesc = to_desc(desc_ring, seq);
+	atomic_long_t *state_var = &rdesc->state_var;
+	struct prb_desc desc;
+	unsigned long id;
+	int err;
+
+	/* Extract the ID, used to specify the descriptor to read. */
+	id = DESC_ID(atomic_long_read(state_var));
+
+	/* Get a local copy of the correct descriptor (if available). */
+	err = desc_read_committed_seq(desc_ring, id, seq, &desc);
+
+	/*
+	 * If @r is NULL, the caller is only interested in the availability
+	 * of the record.
+	 */
+	if (err || !r)
+		return err;
+
+	/* If requested, copy meta data. */
+	if (r->info)
+		memcpy(r->info, &desc.info, sizeof(*(r->info)));
+
+	/* Copy text data. If it fails, this is a data-less descriptor. */
+	if (!copy_data(&rb->text_data_ring, &desc.text_blk_lpos,
+		       desc.info.text_len, r->text_buf, r->text_buf_size,
+		       line_count)) {
+		return -ENOENT;
+	}
+
+	/*
+	 * Copy dict data. Although this should not fail, dict data is not
+	 * important. So if it fails, modify the copied meta data to report
+	 * that there is no dict data, thus silently dropping the dict data.
+	 */
+	if (!copy_data(&rb->dict_data_ring, &desc.dict_blk_lpos,
+		       desc.info.dict_len, r->dict_buf, r->dict_buf_size,
+		       NULL)) {
+		if (r->info)
+			r->info->dict_len = 0;
+	}
+
+	/* Ensure the record is still committed and has the same @seq. */
+	return desc_read_committed_seq(desc_ring, id, seq, &desc);
+}
+
+/**
+ * prb_first_seq() - Get the sequence number of the tail descriptor.
+ *
+ * @rb:  The ringbuffer to get the sequence number from.
+ *
+ * This is the public function available to readers to see what the
+ * first/oldest sequence number is.
+ *
+ * This provides readers a starting point to begin iterating the ringbuffer.
+ * Note that the returned sequence number might not belong to a valid record.
+ *
+ * Context: Any context.
+ * Return: The sequence number of the first/oldest record or, if the
+ *         ringbuffer is empty, 0 is returned.
+ */
+u64 prb_first_seq(struct printk_ringbuffer *rb)
+{
+	struct prb_desc_ring *desc_ring = &rb->desc_ring;
+	enum desc_state d_state;
+	struct prb_desc desc;
+	unsigned long id;
+
+	for (;;) {
+		id = atomic_long_read(
+			&rb->desc_ring.tail_id); /* LMM(prb_first_seq:A) */
+
+		d_state = desc_read(desc_ring, id,
+				    &desc); /* LMM(prb_first_seq:B) */
+
+		/*
+		 * This loop will not be infinite because the tail is
+		 * _always_ in the committed or reusable state.
+		 */
+		if (d_state == desc_committed || d_state == desc_reusable)
+			break;
+
+		/*
+		 * Guarantee the last state load from desc_read() is before
+		 * reloading @tail_id in order to see a new tail in the case
+		 * that the descriptor has been recycled. This pairs with
+		 * desc_reserve:D.
+		 */
+		smp_rmb(); /* LMM(prb_first_seq:C) */
+
+		/*
+		 * Reload the tail ID.
+		 *
+		 * Memory barrier involvement:
+		 *
+		 * If prb_first_seq:B reads from desc_reserve:G, then
+		 * prb_first_seq:A reads from desc_push_tail:B.
+		 *
+		 * Relies on:
+		 *
+		 * MB from desc_push_tail:B to desc_reserve:G
+		 *    matching
+		 * RMB prb_first_seq:B to prb_first_seq:A
+		 */
+	}
+
+	return desc.info.seq;
+}
+
+/*
+ * Non-blocking read of a record. Updates @seq to the last committed record
+ * (which may have no data).
+ *
+ * See the description of prb_read_valid() and prb_read_valid_info()
+ * for details.
+ */
+bool _prb_read_valid(struct printk_ringbuffer *rb, u64 *seq,
+		     struct printk_record *r, unsigned int *line_count)
+{
+	u64 tail_seq;
+	int err;
+
+	while ((err = prb_read(rb, *seq, r, line_count))) {
+		tail_seq = prb_first_seq(rb);
+
+		if (*seq < tail_seq) {
+			/*
+			 * Behind the tail. Catch up and try again. This
+			 * can happen for -ENOENT and -EINVAL cases.
+			 */
+			*seq = tail_seq;
+
+		} else if (err == -ENOENT) {
+			/* Record exists, but no data available. Skip. */
+			(*seq)++;
+
+		} else {
+			/* Non-existent/non-committed record. Must stop. */
+			return false;
+		}
+	}
+
+	return true;
+}
+
+/**
+ * prb_read_valid() - Non-blocking read of a requested record or (if gone)
+ *                    the next available record.
+ *
+ * @rb:  The ringbuffer to read from.
+ * @seq: The sequence number of the record to read.
+ * @r:   A record data buffer to store the read record to.
+ *
+ * This is the public function available to readers to read a record.
+ *
+ * The reader provides the @info, @text_buf, @dict_buf buffers of @r to be
+ * filled in. Any of the buffer pointers can be set to NULL if the reader
+ * is not interested in that data. To ensure proper initialization of @r,
+ * prb_rec_init_rd() should be used.
+ *
+ * Context: Any context.
+ * Return: true if a record was read, otherwise false.
+ *
+ * On success, the reader must check r->info.seq to see which record was
+ * actually read. This allows the reader to detect dropped records.
+ *
+ * Failure means @seq refers to a not yet written record.
+ */
+bool prb_read_valid(struct printk_ringbuffer *rb, u64 seq,
+		    struct printk_record *r)
+{
+	return _prb_read_valid(rb, &seq, r, NULL);
+}
+
+/**
+ * prb_read_valid_info() - Non-blocking read of meta data for a requested
+ *                         record or (if gone) the next available record.
+ *
+ * @rb:         The ringbuffer to read from.
+ * @seq:        The sequence number of the record to read.
+ * @info:       A buffer to store the read record meta data to.
+ * @line_count: A buffer to store the number of lines in the record text.
+ *
+ * This is the public function available to readers to read only the
+ * meta data of a record.
+ *
+ * The reader provides the @info, @line_count buffers to be filled in.
+ * Either of the buffer pointers can be set to NULL if the reader is not
+ * interested in that data.
+ *
+ * Context: Any context.
+ * Return: true if a record's meta data was read, otherwise false.
+ *
+ * On success, the reader must check info->seq to see which record meta data
+ * was actually read. This allows the reader to detect dropped records.
+ *
+ * Failure means @seq refers to a not yet written record.
+ */
+bool prb_read_valid_info(struct printk_ringbuffer *rb, u64 seq,
+			 struct printk_info *info, unsigned int *line_count)
+{
+	struct printk_record r;
+
+	prb_rec_init_rd(&r, info, NULL, 0, NULL, 0);
+
+	return _prb_read_valid(rb, &seq, &r, line_count);
+}
+
+/**
+ * prb_next_seq() - Get the sequence number after the last available record.
+ *
+ * @rb:  The ringbuffer to get the sequence number from.
+ *
+ * This is the public function available to readers to see what the next
+ * newest sequence number available to readers will be.
+ *
+ * This provides readers a sequence number to jump to if all currently
+ * available records should be skipped.
+ *
+ * Context: Any context.
+ * Return: The sequence number of the next newest (not yet available) record
+ *         for readers.
+ */
+u64 prb_next_seq(struct printk_ringbuffer *rb)
+{
+	u64 seq = 0;
+
+	do {
+		/* Search forward from the oldest descriptor. */
+		if (!_prb_read_valid(rb, &seq, NULL, NULL))
+			return seq;
+		seq++;
+	} while (seq);
+
+	return 0;
+}
+
+/**
+ * prb_init() - Initialize a ringbuffer to use provided external buffers.
+ *
+ * @rb:       The ringbuffer to initialize.
+ * @text_buf: The data buffer for text data.
+ * @textbits: The size of @text_buf as a power-of-2 value.
+ * @dict_buf: The data buffer for dictionary data.
+ * @dictbits: The size of @dict_buf as a power-of-2 value.
+ * @descs:    The descriptor buffer for ringbuffer records.
+ * @descbits: The count of @descs items as a power-of-2 value.
+ *
+ * This is the public function available to writers to setup a ringbuffer
+ * during runtime using provided buffers.
+ *
+ * This must match the initialization of DECLARE_PRINTKRB().
+ *
+ * Context: Any context.
+ */
+void prb_init(struct printk_ringbuffer *rb,
+	      char *text_buf, unsigned int textbits,
+	      char *dict_buf, unsigned int dictbits,
+	      struct prb_desc *descs, unsigned int descbits)
+{
+	memset(descs, 0, _DESCS_COUNT(descbits) * sizeof(descs[0]));
+
+	rb->desc_ring.count_bits = descbits;
+	rb->desc_ring.descs = descs;
+	atomic_long_set(&rb->desc_ring.head_id, DESC0_ID(descbits));
+	atomic_long_set(&rb->desc_ring.tail_id, DESC0_ID(descbits));
+
+	rb->text_data_ring.size_bits = textbits;
+	rb->text_data_ring.data = text_buf;
+	atomic_long_set(&rb->text_data_ring.head_lpos, BLK0_LPOS(textbits));
+	atomic_long_set(&rb->text_data_ring.tail_lpos, BLK0_LPOS(textbits));
+
+	rb->dict_data_ring.size_bits = dictbits;
+	rb->dict_data_ring.data = dict_buf;
+	atomic_long_set(&rb->dict_data_ring.head_lpos, BLK0_LPOS(dictbits));
+	atomic_long_set(&rb->dict_data_ring.tail_lpos, BLK0_LPOS(dictbits));
+
+	atomic_long_set(&rb->fail, 0);
+
+	descs[0].info.seq = -(u64)_DESCS_COUNT(descbits);
+
+	descs[_DESCS_COUNT(descbits) - 1].info.seq = 0;
+	atomic_long_set(&(descs[_DESCS_COUNT(descbits) - 1].state_var),
+			DESC0_SV(descbits));
+	descs[_DESCS_COUNT(descbits) - 1].text_blk_lpos.begin = INVALID_LPOS;
+	descs[_DESCS_COUNT(descbits) - 1].text_blk_lpos.next = INVALID_LPOS;
+	descs[_DESCS_COUNT(descbits) - 1].dict_blk_lpos.begin = INVALID_LPOS;
+	descs[_DESCS_COUNT(descbits) - 1].dict_blk_lpos.next = INVALID_LPOS;
+}
+
+/**
+ * prb_record_text_space() - Query the full actual used ringbuffer space for
+ *                           the text data of a reserved entry.
+ *
+ * @e: The successfully reserved entry to query.
+ *
+ * This is the public function available to writers to see how much actual
+ * space is used in the ringbuffer to store the text data of the specified
+ * entry.
+ *
+ * This function is only valid if @e has been successfully reserved using
+ * prb_reserve().
+ *
+ * Context: Any context.
+ * Return: The size in bytes used by the text data of the associated record.
+ */
+unsigned int prb_record_text_space(struct prb_reserved_entry *e)
+{
+	return e->text_space;
+}
diff --git a/kernel/printk/printk_ringbuffer.h b/kernel/printk/printk_ringbuffer.h
new file mode 100644
index 000000000000..f929b3e26a11
--- /dev/null
+++ b/kernel/printk/printk_ringbuffer.h
@@ -0,0 +1,369 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _KERNEL_PRINTK_RINGBUFFER_H
+#define _KERNEL_PRINTK_RINGBUFFER_H
+
+#include <linux/atomic.h>
+
+struct printk_info {
+	u64	seq;		/* sequence number */
+	u64	ts_nsec;	/* timestamp in nanoseconds */
+	u16	text_len;	/* length of text message */
+	u16	dict_len;	/* length of dictionary message */
+	u8	facility;	/* syslog facility */
+	u8	flags:5;	/* internal record flags */
+	u8	level:3;	/* syslog level */
+	u32	caller_id;	/* thread id or processor id */
+};
+
+/*
+ * A structure providing the buffers, used by writers and readers.
+ *
+ * Writers:
+ * Using prb_rec_init_wr(), a writer sets @text_buf_size and @dict_buf_size
+ * before calling prb_reserve(). On success, prb_reserve() sets @info,
+ * @text_buf, @dict_buf to buffers reserved for that writer.
+ *
+ * Readers:
+ * Using prb_rec_init_rd(), a reader sets all fields before calling
+ * prb_read_valid(). Note that the reader provides the @info, @text_buf,
+ * @dict_buf buffers. On success, the struct pointed to by @info will be
+ * filled and the char arrays pointed to by @text_buf and @dict_buf will
+ * be filled with text and dict data.
+ */
+struct printk_record {
+	struct printk_info	*info;
+	char			*text_buf;
+	char			*dict_buf;
+	unsigned int		text_buf_size;
+	unsigned int		dict_buf_size;
+};
+
+/* Specifies the position/span of a data block. */
+struct prb_data_blk_lpos {
+	unsigned long	begin;
+	unsigned long	next;
+};
+
+/* A descriptor: the complete meta-data for a record. */
+struct prb_desc {
+	struct printk_info		info;
+	atomic_long_t			state_var;
+	struct prb_data_blk_lpos	text_blk_lpos;
+	struct prb_data_blk_lpos	dict_blk_lpos;
+};
+
+/* A ringbuffer of "ID + data" elements. */
+struct prb_data_ring {
+	unsigned int	size_bits;
+	char		*data;
+	atomic_long_t	head_lpos;
+	atomic_long_t	tail_lpos;
+};
+
+/* A ringbuffer of "struct prb_desc" elements. */
+struct prb_desc_ring {
+	unsigned int		count_bits;
+	struct prb_desc		*descs;
+	atomic_long_t		head_id;
+	atomic_long_t		tail_id;
+};
+
+/* The high level structure representing the printk ringbuffer. */
+struct printk_ringbuffer {
+	struct prb_desc_ring	desc_ring;
+	struct prb_data_ring	text_data_ring;
+	struct prb_data_ring	dict_data_ring;
+	atomic_long_t		fail;
+};
+
+/* Used by writers as a reserve/commit handle. */
+struct prb_reserved_entry {
+	struct printk_ringbuffer	*rb;
+	unsigned long			irqflags;
+	unsigned long			id;
+	unsigned int			text_space;
+};
+
+#define _DATA_SIZE(sz_bits)		(1UL << (sz_bits))
+#define _DESCS_COUNT(ct_bits)		(1U << (ct_bits))
+#define DESC_SV_BITS			(sizeof(unsigned long) * 8)
+#define DESC_COMMITTED_MASK		(1UL << (DESC_SV_BITS - 1))
+#define DESC_REUSE_MASK			(1UL << (DESC_SV_BITS - 2))
+#define DESC_FLAGS_MASK			(DESC_COMMITTED_MASK | DESC_REUSE_MASK)
+#define DESC_ID_MASK			(~DESC_FLAGS_MASK)
+#define DESC_ID(sv)			((sv) & DESC_ID_MASK)
+#define INVALID_LPOS			1
+
+#define INVALID_BLK_LPOS	\
+	{			\
+		.begin	= INVALID_LPOS,	\
+		.next	= INVALID_LPOS,	\
+	}
+
+/*
+ * Descriptor Bootstrap
+ *
+ * The descriptor array is minimally initialized to allow immediate usage
+ * by readers and writers. The requirements that the descriptor array
+ * initialization must satisfy:
+ *
+ *   Req1
+ *     The tail must point to an existing (committed or reusable) descriptor.
+ *     This is required by the implementation of prb_first_seq().
+ *
+ *   Req2
+ *     Readers must see that the ringbuffer is initially empty.
+ *
+ *   Req3
+ *     The first record reserved by a writer is assigned sequence number 0.
+ *
+ * To satisfy Req1, the tail initially points to a descriptor that is
+ * minimally initialized (having no data block, i.e. data-less with the
+ * data block's lpos @begin and @next values set to INVALID_LPOS).
+ *
+ * To satisfy Req2, the initial tail descriptor is initialized to the
+ * reusable state. Readers recognize reusable descriptors as existing
+ * records, but skip over them.
+ *
+ * To satisfy Req3, the last descriptor in the array is used as the initial
+ * head (and tail) descriptor. This allows the first record reserved by a
+ * writer (head + 1) to be the first descriptor in the array. (Only the first
+ * descriptor in the array could have a valid sequence number of 0.)
+ *
+ * The first time a descriptor is reserved, it is assigned a sequence number
+ * with the value of the array index. A "first time reserved" descriptor can
+ * be recognized because it has a sequence number of 0 but does not have an
+ * index of 0. (Only the first descriptor in the array could have a valid
+ * sequence number of 0.) After the first reservation, all future reservations
+ * (recycling) simply involve incrementing the sequence number by the array
+ * count.
+ *
+ *   Hack #1
+ *     Only the first descriptor in the array is allowed to have the sequence
+ *     number 0. In this case it is not possible to recognize if it is being
+ *     reserved the first time (set to index value) or has been reserved
+ *     previously (increment by the array count). This is handled by _always_
+ *     incrementing the sequence number by the array count when reserving the
+ *     first descriptor in the array. In order to satisfy Req3, the sequence
+ *     number of the first descriptor in the array is initialized to minus
+ *     the array count. Then, upon the first reservation, it is incremented
+ *     to 0, thus satisfying Req3.
+ *
+ *   Hack #2
+ *     prb_first_seq() can be called at any time by readers to retrieve the
+ *     sequence number of the tail descriptor. However, due to Req2 and Req3,
+ *     initially there are no records to report the sequence number of
+ *     (sequence numbers are u64 and there is nothing less than 0). To handle
+ *     this, the sequence number of the initial tail descriptor is initialized
+ *     to 0. Technically this is incorrect, because there is no record with
+ *     sequence number 0 (yet) and the tail descriptor is not the first
+ *     descriptor in the array. But it allows prb_read_valid() to correctly
+ *     report the existence of a record for _any_ given sequence number at all
+ *     times. Bootstrapping is complete when the tail is pushed the first
+ *     time, thus finally pointing to the first descriptor reserved by a
+ *     writer, which has the assigned sequence number 0.
+ */
+
+/*
+ * Initiating Logical Value Overflows
+ *
+ * Both logical position (lpos) and ID values can be mapped to array indexes
+ * but may experience overflows during the lifetime of the system. To ensure
+ * that printk_ringbuffer can handle the overflows for these types, initial
+ * values are chosen that map to the correct initial array indexes, but will
+ * result in overflows soon.
+ *
+ *   BLK0_LPOS
+ *     The initial @head_lpos and @tail_lpos for data rings. It is at index
+ *     0 and the lpos value is such that it will overflow on the first wrap.
+ *
+ *   DESC0_ID
+ *     The initial @head_id and @tail_id for the desc ring. It is at the last
+ *     index of the descriptor array (see Req3 above) and the ID value is such
+ *     that it will overflow on the second wrap.
+ */
+#define BLK0_LPOS(sz_bits)	(-(_DATA_SIZE(sz_bits)))
+#define DESC0_ID(ct_bits)	DESC_ID(-(_DESCS_COUNT(ct_bits) + 1))
+#define DESC0_SV(ct_bits)	(DESC_COMMITTED_MASK | DESC_REUSE_MASK | \
+					DESC0_ID(ct_bits))
+
+/*
+ * Declare a ringbuffer with an external text data buffer. The same as
+ * DECLARE_PRINTKRB() but allows specifying an external buffer for the
+ * text data.
+ *
+ * Note: The specified external buffer must be of the size:
+ *       2 ^ (descbits + avgtextbits)
+ */
+#define _DECLARE_PRINTKRB(name, descbits, avgtextbits, avgdictbits,	\
+			  text_buf)					\
+char _##name##_dict[1U << ((avgdictbits) + (descbits))]			\
+	__aligned(__alignof__(unsigned long));				\
+struct prb_desc _##name##_descs[_DESCS_COUNT(descbits)] = {		\
+	/* this will be the first record reserved by a writer */	\
+	[0] = {								\
+			.info = {					\
+				/*
+				 * will be incremented to 0 on
+				 * the first reservation
+				 */					\
+				.seq = -(u64)_DESCS_COUNT(descbits),	\
+				},					\
+		},							\
+	/* the initial head and tail */					\
+	[_DESCS_COUNT(descbits) - 1] = {				\
+			.info = {					\
+				/*
+				 * reports the minimal seq value
+				 * during the bootstrap phase
+				 */					\
+				.seq = 0,				\
+				},					\
+			/* reusable */					\
+			.state_var	= ATOMIC_INIT(DESC0_SV(descbits)), \
+			/* no associated data block */			\
+			.text_blk_lpos	= INVALID_BLK_LPOS,		\
+			.dict_blk_lpos	= INVALID_BLK_LPOS,		\
+		},							\
+	};								\
+struct printk_ringbuffer name = {					\
+	.desc_ring = {							\
+		.count_bits	= descbits,				\
+		.descs		= &_##name##_descs[0],			\
+		.head_id	= ATOMIC_INIT(DESC0_ID(descbits)),	\
+		.tail_id	= ATOMIC_INIT(DESC0_ID(descbits)),	\
+	},								\
+	.text_data_ring = {						\
+		.size_bits	= (avgtextbits) + (descbits),		\
+		.data		= text_buf,				\
+		.head_lpos	= ATOMIC_LONG_INIT(BLK0_LPOS(		\
+					(avgtextbits) + (descbits))),	\
+		.tail_lpos	= ATOMIC_LONG_INIT(BLK0_LPOS(		\
+					(avgtextbits) + (descbits))),	\
+	},								\
+	.dict_data_ring = {						\
+		.size_bits	= (avgtextbits) + (descbits),		\
+		.data		= &_##name##_dict[0],			\
+		.head_lpos	= ATOMIC_LONG_INIT(BLK0_LPOS(		\
+					(avgtextbits) + (descbits))),	\
+		.tail_lpos	= ATOMIC_LONG_INIT(BLK0_LPOS(		\
+					(avgtextbits) + (descbits))),	\
+	},								\
+	.fail			= ATOMIC_LONG_INIT(0),			\
+}
+
+/**
+ * DECLARE_PRINTKRB() - Declare a ringbuffer.
+ *
+ * @name:        The name of the ringbuffer variable.
+ * @descbits:    The number of descriptors as a power-of-2 value.
+ * @avgtextbits: The average text data size per record as a power-of-2 value.
+ * @avgdictbits: The average dictionary data size per record as a
+ *               power-of-2 value.
+ *
+ * This is a macro for declaring a ringbuffer and all internal structures
+ * such that it is ready for immediate use. See _DECLARE_PRINTKRB() for a
+ * variant where the text data buffer can be specified externally.
+ */
+#define DECLARE_PRINTKRB(name, descbits, avgtextbits, avgdictbits)	\
+char _##name##_text[1U << ((avgtextbits) + (descbits))]			\
+	__aligned(__alignof__(unsigned long));				\
+_DECLARE_PRINTKRB(name, descbits, avgtextbits, avgdictbits,		\
+		  &_##name##_text[0])
+
+/* Writer Interface */
+
+/**
+ * prb_rec_init_wd() - Initialize a buffer for writing records.
+ *
+ * @r:             The record to initialize.
+ * @text_buf_size: The needed text buffer size.
+ * @dict_buf_size: The needed dictionary buffer size.
+ *
+ * Initialize all the fields that a writer is interested in. If
+ * @dict_buf_size is 0, a dictionary buffer will not be reserved.
+ * @text_buf_size must be greater than 0.
+ *
+ * Note that although @dict_buf_size may be initialized to non-zero,
+ * its value must be rechecked after a successful call to prb_reserve()
+ * to verify a dictionary buffer was actually reserved. Dictionary buffer
+ * reservation is allowed to fail.
+ */
+static inline void prb_rec_init_wr(struct printk_record *r,
+				   unsigned int text_buf_size,
+				   unsigned int dict_buf_size)
+{
+	r->info = NULL;
+	r->text_buf = NULL;
+	r->dict_buf = NULL;
+	r->text_buf_size = text_buf_size;
+	r->dict_buf_size = dict_buf_size;
+}
+
+bool prb_reserve(struct prb_reserved_entry *e, struct printk_ringbuffer *rb,
+		 struct printk_record *r);
+void prb_commit(struct prb_reserved_entry *e);
+
+void prb_init(struct printk_ringbuffer *rb,
+	      char *text_buf, unsigned int text_buf_size,
+	      char *dict_buf, unsigned int dict_buf_size,
+	      struct prb_desc *descs, unsigned int descs_count_bits);
+unsigned int prb_record_text_space(struct prb_reserved_entry *e);
+
+/* Reader Interface */
+
+/**
+ * prb_rec_init_rd() - Initialize a buffer for reading records.
+ *
+ * @r:             The record to initialize.
+ * @info:          A buffer to store record meta-data.
+ * @text_buf:      A buffer to store text data.
+ * @text_buf_size: The size of @text_buf.
+ * @dict_buf:      A buffer to store dictionary data.
+ * @dict_buf_size: The size of @dict_buf.
+ *
+ * Initialize all the fields that a reader is interested in. All arguments
+ * (except @r) are optional. Only record data for arguments that are
+ * non-NULL or non-zero will be read.
+ */
+static inline void prb_rec_init_rd(struct printk_record *r,
+				   struct printk_info *info,
+				   char *text_buf, unsigned int text_buf_size,
+				   char *dict_buf, unsigned int dict_buf_size)
+{
+	r->info = info;
+	r->text_buf = text_buf;
+	r->dict_buf = dict_buf;
+	r->text_buf_size = text_buf_size;
+	r->dict_buf_size = dict_buf_size;
+}
+
+/**
+ * prb_for_each_record() - Iterate over a ringbuffer.
+ *
+ * @from: The sequence number to begin with.
+ * @rb:   The ringbuffer to iterate over.
+ * @s:    A u64 to store the sequence number on each iteration.
+ * @r:    A printk_record to store the record on each iteration.
+ *
+ * This is a macro for conveniently iterating over a ringbuffer.
+ *
+ * Context: Any context.
+ */
+#define prb_for_each_record(from, rb, s, r)	\
+	for ((s) = from;			\
+	     prb_read_valid(rb, s, r);		\
+	     (s) = (r)->info->seq + 1)
+
+bool prb_read_valid(struct printk_ringbuffer *rb, u64 seq,
+		    struct printk_record *r);
+bool prb_read_valid_info(struct printk_ringbuffer *rb, u64 seq,
+			 struct printk_info *info, unsigned int *line_count);
+
+u64 prb_first_seq(struct printk_ringbuffer *rb);
+u64 prb_next_seq(struct printk_ringbuffer *rb);
+
+unsigned int prb_count_lines(char *text, unsigned int text_size);
+
+#endif /* _KERNEL_PRINTK_RINGBUFFER_H */
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
