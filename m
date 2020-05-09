Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B83E1CC247
	for <lists+kexec@lfdr.de>; Sat,  9 May 2020 16:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f077FEeLxJqBqSLj2N4H++IhmwFqNWOXTyIfuqKovY=; b=cSC7p2N8Uk5T0E
	UV3TOds4t4tHzXmgwwQToXISycfvn9fYNguag7DRA/Mz/HCNRNcr1jzB3yHZZbb//MBoDFNe5tpfU
	Zpcu4R2yaUhdxSzzxSAHLZegvhTEHuh3vhbyri09jv8lWznIFTxeMHrSUxNYBtPkIv/qFkiSBU0oV
	BkLDvBlKN7TPOcVvGCMNYVEh/TSBpFlbo/YtpVgH5elmjsrPuOu+DJmJrVpwQRwIVSO9DLP0f0KW5
	86QGURk88F/9LY4Yg5jc/jk4REXDu+vaH7mxEYJAEZgnxLk0hkXWVMaGtWV+25FmLVc7G5phcEpu1
	ZVSfxyuPzLD5pVUnHpJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXQu9-0007pI-CC; Sat, 09 May 2020 14:56:41 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXQu6-0007ol-0D
 for kexec@lists.infradead.org; Sat, 09 May 2020 14:56:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589036194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=biBEh2xyG7QOz0vWY4fM+UdTv5nwnU3LRB3gcCSBxrI=;
 b=Zsv0H2YqN1sZAYBa/UCloHZg6FB4iTagjI9+IUM3XnkAXeI0XMUhNwUPVbbUO5Lbz3BuXI
 3gHN59fdERf4Tekqgr07Cp8nLI9FOgcC52+IvKIIHc9L1QF2WyRSiRlBCiXsC7tlYcv6eV
 hg9c/c4aJN2pII1g5KXJ/iERIpE34ME=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-MPQ1STaMOfSNwr8bvkqY-A-1; Sat, 09 May 2020 10:56:32 -0400
X-MC-Unique: MPQ1STaMOfSNwr8bvkqY-A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08901800D24;
 Sat,  9 May 2020 14:56:30 +0000 (UTC)
Received: from x1-fbsd (unknown [10.3.128.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CA879323;
 Sat,  9 May 2020 14:56:16 +0000 (UTC)
Date: Sat, 9 May 2020 10:56:14 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200509145614.GA6704@x1-fbsd>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507182257.GX11244@42.do-not-panic.com>
 <20200507184307.GF205881@optiplex-lnx>
 <20200507184705.GG205881@optiplex-lnx>
 <20200507203340.GZ11244@42.do-not-panic.com>
 <20200507220606.GK205881@optiplex-lnx>
 <20200507222558.GA11244@42.do-not-panic.com>
 <20200508124719.GB367616@optiplex-lnx>
 <20200509034854.GI11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509034854.GI11244@42.do-not-panic.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_075638_134549_701D2323 
X-CRM114-Status: GOOD (  26.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-doc@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 Jeff Mahoney <jeffm@suse.com>, bhe@redhat.com, corbet@lwn.net,
 Laura Abbott <labbott@redhat.com>, dyoung@redhat.com,
 Ann Davis <AnDavis@suse.com>, Richard Palethorpe <rpalethorpe@suse.de>,
 keescook@chromium.org, Jiri Kosina <jikos@kernel.org>, cai@lca.pw,
 Adrian Bunk <bunk@kernel.org>, Tso Ted <tytso@mit.edu>,
 Jessica Yu <jeyu@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 rdunlap@infradead.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 03:48:54AM +0000, Luis Chamberlain wrote:
> On Fri, May 08, 2020 at 08:47:19AM -0400, Rafael Aquini wrote:
> > On Thu, May 07, 2020 at 10:25:58PM +0000, Luis Chamberlain wrote:
> > > On Thu, May 07, 2020 at 06:06:06PM -0400, Rafael Aquini wrote:
> > > > On Thu, May 07, 2020 at 08:33:40PM +0000, Luis Chamberlain wrote:
> > > > > I *think* that a cmdline route to enable this would likely remove the
> > > > > need for the kernel config for this. But even with Vlastimil's work
> > > > > merged, I think we'd want yet-another value to enable / disable this
> > > > > feature. Do we need yet-another-taint flag to tell us that this feature
> > > > > was enabled?
> > > > >
> > > > 
> > > > I guess it makes sense to get rid of the sysctl interface for
> > > > proc_on_taint, and only keep it as a cmdline option. 
> > > 
> > > That would be easier to support and k3eps this simple.
> > > 
> > > > But the real issue seems to be, regardless we go with a cmdline-only option
> > > > or not, the ability of proc_taint() to set any arbitrary taint flag 
> > > > other than just marking the kernel with TAINT_USER. 
> > > 
> > > I think we would have no other option but to add a new TAINT flag so
> > > that we know that the taint flag was modified by a user. Perhaps just
> > > re-using TAINT_USER when proc_taint() would suffice.
> > >
> > 
> > We might not need an extra taint flag if, perhaps, we could make these
> > two features mutually exclusive. The idea here is that bitmasks added 
> > via panic_on_taint get filtered out in proc_taint(), so a malicious 
> > user couldn't exploit the latter interface to easily panic the system,
> > when the first one is also in use. 
> 
> I get it, however I I can still see the person who enables enabling
> panic-on-tain wanting to know if proc_taint() was used. So even if
> it was not on their mask, if it was modified that seems like important
> information for a bug report analysis.
>

For that purpose (tracking user taints) I think sth between these lines
would work:

diff --git a/kernel/sysctl.c b/kernel/sysctl.c
index 8a176d8727a3..651a82c13621 100644
--- a/kernel/sysctl.c
+++ b/kernel/sysctl.c
@@ -2602,6 +2602,9 @@ int proc_douintvec(struct ctl_table *table, int write,
                                 do_proc_douintvec_conv, NULL);
 }

+/* track which taint bits were set by the user */
+static unsigned long user_tainted;
+
 /*
  * Taint values can only be increased
  * This means we can safely use a temporary.
@@ -2629,11 +2632,20 @@ static int proc_taint(struct ctl_table *table, int write,
                 */
                int i;
                for (i = 0; i < BITS_PER_LONG && tmptaint >> i; i++) {
-                       if ((tmptaint >> i) & 1)
+                       if ((tmptaint >> i) & 1) {
+                               set_bit(i, &user_tainted);
                                add_taint(i, LOCKDEP_STILL_OK);
+                       }
                }
        }

+       /*
+        * Users with SYS_ADMIN capability can fiddle with any arbitrary
+        * taint flag through this interface.
+        * If that's the case, we also need to mark the kernel "tainted by user"
+        */
+       add_taint(TAINT_USER, LOCKDEP_STILL_OK);
+
        return err;
 }


I don't think, though, it's panic_on_taint work to track that. I posted a v3 for
this feature with a way to select if one wants to avoid user forced taints
triggering panic() for flags also set for panic_on_taint.

Cheers,

-- Rafael


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
