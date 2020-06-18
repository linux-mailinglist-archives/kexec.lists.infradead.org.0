Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1531FFAFD
	for <lists+kexec@lfdr.de>; Thu, 18 Jun 2020 20:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wj7n5K9PvkXQFK0dMYYrkvD0GSEuIv4QeLmhccnrlSo=; b=OP34gqXz7A+BpB
	VukLqfrh4dYDQNfqHBuiaingOFHyXDF1Po/D2zhNlo9QLwUAJPdGLI3Iirh9KQi2CHiwvadjlsMK4
	ModbANjmbeEuCAweLtbRQpy9eRjdNSM9VcG8q9OSDKLcCetrhvKlPOdbDHh5EnUbb34RqgSZbYFNE
	+vORTzFKUATxzfrEOlVd1xz/9ZrUDFQnt96Iy2QhCLZYIEzotmg8zGCgIR4oLPkR0xGOY6SS9RFau
	g+tiilbGWzNKPOYzttDwLmaxxYWE3WH0HTMxtrY0QdZY27UN+12OZEuBydBkGgBrdywlTjS25gITR
	c2ZzE979XdpS+y7Y54jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzD8-0008Nr-Db; Thu, 18 Jun 2020 18:24:26 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzD5-0008NC-HY
 for kexec@lists.infradead.org; Thu, 18 Jun 2020 18:24:24 +0000
IronPort-SDR: GyFLC8p/a7nIVSJOyjO+JwCoerMYv7ID3oFiP/LOmmewGX8e/xD6+YN+gJEWuz1oNIb8iwbp26
 vb5Aw1/6PalQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="142625510"
X-IronPort-AV: E=Sophos;i="5.75,252,1589266800"; d="scan'208";a="142625510"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 11:24:22 -0700
IronPort-SDR: QWjFFZYrpMn49XBxW79LNyP/ysuOitYYgt9ptp+2tGCYQhTM3Z5jOA8X3HSEGlm9DcJztl0PWw
 E6FQAoxnVTXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,252,1589266800"; d="scan'208";a="299788705"
Received: from lkp-server02.sh.intel.com (HELO 5ce11009e457) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jun 2020 11:24:17 -0700
Received: from kbuild by 5ce11009e457 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jlzD0-0000Mc-A4; Thu, 18 Jun 2020 18:24:18 +0000
Date: Fri, 19 Jun 2020 02:23:23 +0800
From: kernel test robot <lkp@intel.com>
To: John Ogness <john.ogness@linutronix.de>, Petr Mladek <pmladek@suse.com>
Subject: [RFC PATCH] printk: _printk_rb_static_dict can be static
Message-ID: <20200618182323.GA72993@4e49555bcca1>
References: <20200618144919.9806-4-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618144919.9806-4-john.ogness@linutronix.de>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_112423_616958_8C95BDB0 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrea Parri <parri.andrea@gmail.com>, kbuild-all@lists.01.org,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Signed-off-by: kernel test robot <lkp@intel.com>
---
 printk.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 7642ef634956f..d812ada06735f 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -434,7 +434,7 @@ static u32 log_buf_len = __LOG_BUF_LEN;
  */
 #define PRB_AVGBITS 5	/* 32 character average length */
 
-_DECLARE_PRINTKRB(printk_rb_static, CONFIG_LOG_BUF_SHIFT - PRB_AVGBITS,
+static _DECLARE_PRINTKRB(printk_rb_static, CONFIG_LOG_BUF_SHIFT - PRB_AVGBITS,
 		  PRB_AVGBITS, PRB_AVGBITS, &__log_buf[0]);
 
 static struct printk_ringbuffer printk_rb_dynamic;

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
