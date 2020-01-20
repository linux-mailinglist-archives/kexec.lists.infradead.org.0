Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FCB14337C
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 22:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziHgs3B1Q/SPDIQ0x8ZPSlunSNpdOdBqf21OVrQFPp4=; b=QjRYfpOSplj8GB
	E9N/bFsbl4TvbDLhpJnZvxmcnKRv8IiC46DFG/Z+gUOJKuwI1nnJKNt0TAvWhDnVpQ0jVw82Tukt6
	vNFHsK4v9pP0YliM05VE4hej2g3TAR7dVBUlYq/HzGRdIAAZVBXbziEzCZjHE3pKZkPghlL5VeSnk
	7WAxj86PtKb/ASYndSHI+fMWxUtiBvKSAaPN4Ic3A0T03DSR569GmHWxGnngg3P1oXcXU9/1V19Fm
	N0wH+u9y+s+h0/CzK3EPUtMswdzsrZQLqLds17iNROAfHi1MyXfUanetHG98D5cLaFw8Y8d5Py7UL
	8aLpJlqBHGQf5JkCrg2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iteop-0007zU-L1; Mon, 20 Jan 2020 21:42:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iteon-0007yp-1A
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 21:42:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 22C13AD5D;
 Mon, 20 Jan 2020 21:42:41 +0000 (UTC)
Date: Mon, 20 Jan 2020 22:42:04 +0100
From: Jean Delvare <jdelvare@suse.de>
To: ebiederm@xmission.com (Eric W. Biederman)
Subject: Re: [PATCH v1 2/2] firmware: dmi_scan: Pass dmi_entry_point to
 kexec'ed kernel
Message-ID: <20200120224204.4e5cc0df@endymion>
In-Reply-To: <87a76i9ksr.fsf@x220.int.ebiederm.org>
References: <20161202195416.58953-1-andriy.shevchenko@linux.intel.com>
 <20161202195416.58953-3-andriy.shevchenko@linux.intel.com>
 <20161215122856.7d24b7a8@endymion>
 <20161216023213.GA4505@dhcp-128-65.nay.redhat.com>
 <1481890738.9552.70.camel@linux.intel.com>
 <20161216143330.69e9c8ee@endymion>
 <20161217105721.GB6922@dhcp-128-65.nay.redhat.com>
 <20200120121927.GJ32742@smile.fi.intel.com>
 <87a76i9ksr.fsf@x220.int.ebiederm.org>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_134245_217154_FD009021 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-efi@vger.kernel.org, ard.biesheuvel@linaro.org,
 matt@codeblueprint.co.uk, Mika Westerberg <mika.westerberg@linux.intel.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, 20 Jan 2020 10:04:04 -0600, Eric W. Biederman wrote:
> Second.  I looked at your test results and they don't directly make
> sense.  dmidecode bypasses the kernel completely or it did last time
> I looked so I don't know why you would be using that to test if
> something in the kernel is working.

That must have been long ago. A recent version of dmidecode (>= 3.0)
running on a recent kernel
(>= d7f96f97c4031fa4ffdb7801f9aae23e96170a6f, v4.2) will read the DMI
data from /sys/firmware/dmi/tables, so it is very much relying on the
kernel doing the right thing. If not, it will still try to fallback to
reading from /dev/mem directly on certain architectures. You can force
that old method with --no-sysfs.

Hope that helps,
-- 
Jean Delvare
SUSE L3 Support

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
