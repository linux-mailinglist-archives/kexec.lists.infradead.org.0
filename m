Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD47D10C1F1
	for <lists+kexec@lfdr.de>; Thu, 28 Nov 2019 02:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0m9n93suuRQb8q1c81byQ7KSG/eMr0cpfAkOsq+Kp6g=; b=lNAygmofLPBPO4
	LKAlXG2e1G1UQ/ETJ9/vXPFsYivEA9gjRNtYRAAIPBT89CjjGF0GRps243rRjSGk+1amKEIgyjpFm
	kUWobEwAPgqhMJQAvzUsupuLGLB9OPRlZ2QsFvNFdOHKtpvtc1spOirRKL98cV7yETSG5bMqytMOK
	zt0D5emq6IOKWIiKvQDoz281e5Vzr3vP0ZR5IVQB/m+zsBbmNVJA+cHF0A+dVGZSY6sXYNc4iHCm6
	NmgQU4xou8SF54JU8eRXI/H+bUChrmNi5n/3eSuuy6pszzkmbabkoYOdZ9k4AZWNaXwxzV+qPg/Km
	O/aqq62Q5KLgQ9j2MrDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia90E-0004W6-7q; Thu, 28 Nov 2019 01:53:54 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia905-0004S1-Ju
 for kexec@lists.infradead.org; Thu, 28 Nov 2019 01:53:47 +0000
Received: from [5.158.153.53] (helo=g2noscherz.lab.linutronix.de.)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1ia8zK-00083b-Qc; Thu, 28 Nov 2019 02:52:58 +0100
From: John Ogness <john.ogness@linutronix.de>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v5 3/3] printk-rb: add test module
Date: Thu, 28 Nov 2019 02:58:35 +0106
Message-Id: <20191128015235.12940-4-john.ogness@linutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191128015235.12940-1-john.ogness@linutronix.de>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_175345_804374_944415B2 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andrea Parri <andrea.parri@amarulasolutions.com>,
 Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This module does some heavy write stress testing on the ringbuffer
with a reader that is checking for integrity.

Signed-off-by: John Ogness <john.ogness@linutronix.de>
---
 kernel/printk/Makefile   |   3 +
 kernel/printk/test_prb.c | 347 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 350 insertions(+)
 create mode 100644 kernel/printk/test_prb.c

diff --git a/kernel/printk/Makefile b/kernel/printk/Makefile
index 4d052fc6bcde..2aabbe561efc 100644
--- a/kernel/printk/Makefile
+++ b/kernel/printk/Makefile
@@ -2,3 +2,6 @@
 obj-y	= printk.o
 obj-$(CONFIG_PRINTK)	+= printk_safe.o
 obj-$(CONFIG_A11Y_BRAILLE_CONSOLE)	+= braille.o
+
+prbtest-y = printk_ringbuffer.o test_prb.o
+obj-m += prbtest.o
diff --git a/kernel/printk/test_prb.c b/kernel/printk/test_prb.c
new file mode 100644
index 000000000000..d038b16bf01b
--- /dev/null
+++ b/kernel/printk/test_prb.c
@@ -0,0 +1,347 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/kthread.h>
+#include <linux/delay.h>
+#include <linux/random.h>
+#include <linux/slab.h>
+#include <linux/wait.h>
+#include "printk_ringbuffer.h"
+
+/*
+ * This is a test module that starts "num_online_cpus()" writer threads
+ * that each write data of varying length. They do this as fast as
+ * they can.
+ *
+ * Dictionary data is stored in a separate data ring. The writers will
+ * only write dictionary data about half the time. This is to make the
+ * test more realistic with text and dict data rings containing
+ * different data blocks.
+ *
+ * Because the threads are running in such tight loops, they will call
+ * schedule() from time to time so the system stays alive.
+ *
+ * If the writers encounter an error, the test is aborted. Test results are
+ * recorded to the ftrace buffers, with some additional information also
+ * provided via printk. The test can be aborted manually by removing the
+ * module. (Ideally the test should never abort on its own.)
+ */
+
+/* not used right now */
+DECLARE_WAIT_QUEUE_HEAD(test_wait);
+
+/* test data structure */
+struct rbdata {
+	int len;
+	char text[0];
+};
+
+static char *test_running;
+static int halt_test;
+
+/* dump text or dictionary data to the trace buffers */
+static void print_record(const char *name, struct rbdata *dat, u64 seq)
+{
+	char buf[160];
+
+	snprintf(buf, sizeof(buf), "%s", dat->text);
+	buf[sizeof(buf) - 1] = 0;
+
+	trace_printk("seq=%llu len=%d %sval=%s\n",
+		     seq, dat->len, name,
+		     dat->len < sizeof(buf) ? buf : "<invalid>");
+}
+
+/*
+ * sequentially dump all the valid records in the ringbuffer
+ * (used to verify memory integrity)
+ *
+ * Since there is no reader interface, the internal members are
+ * directly accessed. This function is called after all writers
+ * are finished so there is no need for any memory barriers.
+ */
+static void dump_rb(struct printk_ringbuffer *rb)
+{
+	struct printk_info info;
+	struct printk_record r;
+	char text_buf[200];
+	char dict_buf[200];
+	u64 seq = 0;
+
+	r.info = &info;
+	r.text_buf = &text_buf[0];
+	r.dict_buf = &dict_buf[0];
+	r.text_buf_size = sizeof(text_buf);
+	r.dict_buf_size = sizeof(dict_buf);
+
+	trace_printk("BEGIN full dump\n");
+
+	while (prb_read_valid(rb, seq, &r)) {
+		/* check/track the sequence */
+		if (info.seq != seq)
+			trace_printk("DROPPED %llu\n", info.seq - seq);
+
+		print_record("TEXT", (struct rbdata *)&r.text_buf[0],
+			     info.seq);
+		if (info.dict_len) {
+			print_record("DICT", (struct rbdata *)&r.dict_buf[0],
+				     info.seq);
+		}
+
+		seq = info.seq + 1;
+	}
+
+	trace_printk("END full dump\n");
+}
+
+DECLARE_PRINTKRB(test_rb, 15, 5, 5);
+
+static int prbtest_writer(void *data)
+{
+	unsigned long num = (unsigned long)data;
+	struct prb_reserved_entry e;
+	char text_id = 'A' + num;
+	char dict_id = 'a' + num;
+	unsigned long count = 0;
+	struct printk_record r;
+	struct rbdata *dat;
+	int len;
+
+	pr_err("prbtest: start thread %03lu (writer)\n", num);
+
+	for (;;) {
+		len = sizeof(struct rbdata) + (prandom_u32() & 0x7f) + 2;
+
+		/* specify the text/dict sizes for reservation */
+		r.text_buf_size = len;
+		/* only add a dictionary on some records */
+		if (len % 2)
+			r.dict_buf_size = len;
+		else
+			r.dict_buf_size = 0;
+
+		if (prb_reserve(&e, &test_rb, &r)) {
+			len -= sizeof(struct rbdata) + 1;
+
+			dat = (struct rbdata *)&r.text_buf[0];
+			dat->len = len;
+			memset(&dat->text[0], text_id, len);
+			dat->text[len] = 0;
+
+			/* dictionary reservation is allowed to fail */
+			if (r.dict_buf) {
+				dat = (struct rbdata *)&r.dict_buf[0];
+				dat->len = len;
+				memset(&dat->text[0], dict_id, len);
+				dat->text[len] = 0;
+			} else if (r.text_buf_size % 2) {
+				trace_printk(
+				    "writer%lu (%c) dict dropped: seq=%llu\n",
+				    num, text_id, r.info->seq);
+			}
+
+			prb_commit(&e);
+			wake_up_interruptible(&test_wait);
+		} else {
+			WRITE_ONCE(halt_test, 1);
+			trace_printk("writer%lu (%c) reserve failed\n",
+				     num, text_id);
+		}
+
+		if ((count++ & 0x3fff) == 0)
+			schedule();
+
+		if (READ_ONCE(halt_test) == 1)
+			break;
+	}
+
+	pr_err("prbtest: end thread %03lu (writer, wrote %lu)\n", num, count);
+
+	test_running[num] = 0;
+
+	return 0;
+}
+
+static bool check_data(struct rbdata *dat, u64 seq, unsigned long num)
+{
+	int len;
+
+	len = strnlen(dat->text, 160);
+
+	if (len != dat->len || len >= 160) {
+		WRITE_ONCE(halt_test, 1);
+		trace_printk("reader%lu invalid len for %llu (%d<->%d)\n",
+			     num, seq, len, dat->len);
+		return false;
+	}
+
+	while (len) {
+		len--;
+		if (dat->text[len] != dat->text[0]) {
+			WRITE_ONCE(halt_test, 1);
+			trace_printk("reader%lu bad data\n", num);
+			return false;
+		}
+	}
+
+	return true;
+}
+
+static int prbtest_reader(void *data)
+{
+	unsigned long num = (unsigned long)data;
+	unsigned long total_lost = 0;
+	unsigned long max_lost = 0;
+	unsigned long count = 0;
+	struct printk_info info;
+	struct printk_record r;
+	char text_buf[200];
+	char dict_buf[200];
+	int did_sched = 1;
+	u64 seq = 0;
+
+	r.info = &info;
+	r.text_buf = &text_buf[0];
+	r.dict_buf = &dict_buf[0];
+	r.text_buf_size = sizeof(text_buf);
+	r.dict_buf_size = sizeof(dict_buf);
+
+	pr_err("prbtest: start thread %03lu (reader)\n", num);
+
+	while (!wait_event_interruptible(test_wait,
+				kthread_should_stop() ||
+				prb_read_valid(&test_rb, seq, &r))) {
+		if (kthread_should_stop())
+			break;
+		/* check/track the sequence */
+		if (info.seq < seq) {
+			WRITE_ONCE(halt_test, 1);
+			trace_printk("reader%lu invalid seq %llu -> %llu\n",
+				num, seq, info.seq);
+			break;
+		} else if (info.seq != seq && !did_sched) {
+			total_lost += info.seq - seq;
+			if (max_lost < info.seq - seq)
+				max_lost = info.seq - seq;
+		}
+
+		if (!check_data((struct rbdata *)&r.text_buf[0],
+				info.seq, num)) {
+			trace_printk("text error\n");
+			break;
+		}
+
+		if (info.dict_len) {
+			if (!check_data((struct rbdata *)&r.dict_buf[0],
+					info.seq, num)) {
+				trace_printk("dict error\n");
+				break;
+			}
+		} else if (info.text_len % 2) {
+			trace_printk("dict dropped: seq=%llu\n", info.seq);
+		}
+
+		did_sched = 0;
+		if ((count++ & 0x3fff) == 0) {
+			did_sched = 1;
+			schedule();
+		}
+
+		if (READ_ONCE(halt_test) == 1)
+			break;
+
+		seq = info.seq + 1;
+	}
+
+	pr_err(
+	 "reader%lu: total_lost=%lu max_lost=%lu total_read=%lu seq=%llu\n",
+	 num, total_lost, max_lost, count, info.seq);
+
+	pr_err("prbtest: end thread %03lu (reader)\n", num);
+
+	while (!kthread_should_stop())
+		msleep(1000);
+	test_running[num] = 0;
+
+	return 0;
+}
+
+static int module_test_running;
+static struct task_struct *reader_thread;
+
+static int start_test(void *arg)
+{
+	struct task_struct *thread;
+	unsigned long i;
+	int num_cpus;
+
+	num_cpus = num_online_cpus();
+	test_running = kzalloc(num_cpus, GFP_KERNEL);
+	if (!test_running)
+		return -ENOMEM;
+
+	module_test_running = 1;
+
+	pr_err("prbtest: starting test\n");
+
+	for (i = 0; i < num_cpus; i++) {
+		test_running[i] = 1;
+		if (i < num_cpus - 1) {
+			thread = kthread_run(prbtest_writer, (void *)i,
+					     "prbtest writer");
+		} else {
+			thread = kthread_run(prbtest_reader, (void *)i,
+					     "prbtest reader");
+			reader_thread = thread;
+		}
+		if (IS_ERR(thread)) {
+			pr_err("prbtest: unable to create thread %lu\n", i);
+			test_running[i] = 0;
+		}
+	}
+
+	for (;;) {
+		msleep(1000);
+
+		for (i = 0; i < num_cpus; i++) {
+			if (test_running[i] == 1)
+				break;
+		}
+		if (i == num_cpus)
+			break;
+	}
+
+	pr_err("prbtest: completed test\n");
+
+	dump_rb(&test_rb);
+
+	module_test_running = 0;
+
+	return 0;
+}
+
+static int prbtest_init(void)
+{
+	kthread_run(start_test, NULL, "prbtest");
+	return 0;
+}
+
+static void prbtest_exit(void)
+{
+	if (reader_thread && !IS_ERR(reader_thread))
+		kthread_stop(reader_thread);
+
+	WRITE_ONCE(halt_test, 1);
+
+	while (module_test_running)
+		msleep(1000);
+	kfree(test_running);
+}
+
+module_init(prbtest_init);
+module_exit(prbtest_exit);
+
+MODULE_AUTHOR("John Ogness <john.ogness@linutronix.de>");
+MODULE_DESCRIPTION("printk ringbuffer test");
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
