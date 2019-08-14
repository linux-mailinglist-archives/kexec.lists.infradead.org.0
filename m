Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229F78C9A9
	for <lists+kexec@lfdr.de>; Wed, 14 Aug 2019 04:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsjAt/MM+W0jnateitSNyq4/Y3569EqEaV9w2yWFrfg=; b=cBsilXqAYQ6YZN
	MX6spRV0GVJGRA7rkzzHEfCKqCdSkf319Hc/nxI007DfC+bQCXeFFfWGED4m9j9ToZnTst/IdVFsx
	qJMG6OJQtjzu5Z5He7LeDGVhfddlgzWvxskROhwN6teojXsapzj/HENjTaAM2vAAU7QDHgKizozSQ
	J1P9pp818N+n5hpi6cjMZfvsBLBVsKGmXzZv1nCxv+PkeyPektkpB23CYCuqL+AIhLowW8Sr16CAb
	qJrG66m+xB2NG9LUjDc3BhjMZFY9OnBZ6cLCGfcWxx5RSSq+lO7NuUhGyQ5Sw04OEUA9x5683oQlU
	hPgy6DJpxnQ/YQQVPSYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxjGD-0000Fj-1j; Wed, 14 Aug 2019 02:43:37 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxjG8-0000FO-DI
 for kexec@lists.infradead.org; Wed, 14 Aug 2019 02:43:34 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C825810B78;
 Wed, 14 Aug 2019 02:43:30 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-19.pek2.redhat.com
 [10.72.12.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 41BD482E50;
 Wed, 14 Aug 2019 02:43:26 +0000 (UTC)
Date: Wed, 14 Aug 2019 10:43:23 +0800
From: Dave Young <dyoung@redhat.com>
To: Rong Chen <rong.a.chen@intel.com>
Subject: Re: [LKP] [x86/boot] 5b51ae969e: kexec boot failed
Message-ID: <20190814024323.GA7008@dhcp-128-65.nay.redhat.com>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
 <20190802093024.GB30710@zn.tnic>
 <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
 <20190806084543.GA2164@dhcp-128-65.nay.redhat.com>
 <44d5e337-ac6a-46f1-41d4-a963f820391b@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44d5e337-ac6a-46f1-41d4-a963f820391b@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 14 Aug 2019 02:43:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_194332_496226_C52A5B18 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: x86@kernel.org, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>, Chao Fan <fanc.fnst@cn.fujitsu.com>,
 kexec@lists.infradead.org, Jun'ichi Nomura <j-nomura@ce.jp.nec.com>,
 Borislav Petkov <bp@suse.de>, lkp@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/12/19 at 03:49pm, Rong Chen wrote:
> Hi,
> 
> On 8/6/19 4:45 PM, Dave Young wrote:
> > On 08/05/19 at 07:49pm, Chen, Rong A wrote:
> > > Hi,
> > > 
> > > On 8/2/2019 5:30 PM, Borislav Petkov wrote:
> > > > On Fri, Aug 02, 2019 at 03:48:53PM +0800, kernel test robot wrote:
> > > > > FYI, we noticed the following commit (built with gcc-7):
> > > > > 
> > > > > commit: 5b51ae969e3d8ab0134ee3c98a769ad6d2cc2e24 ("x86/boot: Call get_rsdp_addr() after console_init()")
> > > > > https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git  master
> > > > > 
> > > > > in testcase: boot
> > > > > 
> > > > > on test machine: Intel(R) Core(TM) i3-3220 CPU @ 3.30GHz with 4G memory
> > > > > 
> > > > > The commit broke kexec boot on physical machines, We have to set "nokaslr" to kernel cmdline to avoid the issue.
> > > > How exactly do you trigger it? Details?
> > > > 
> > > We use the following command to boot a new kernel:
> > > kexec --noefi -l /opt/rootfs/tmp/pkg/linux/x86_64-rhel-7.6/gcc-7/5b51ae969e3d8ab0134ee3c98a769ad6d2cc2e24/vmlinuz-5.2.0-rc3-00004-g5b51ae969e3d8a
> > > --initrd=/opt/rootfs/tmp/initrd-concatenated
> > > 
> > --noefi is a corner case as kexec now supports efi, it is expected not
> > work with old kexec-tools in case you do not use acpi_rsdp= cmdline
> > explicitly.
> > I suspect it is still the rsdp getting failed instead of the moving
> > chunk after console_init.
> > Can you do more testing?
> > 1.  test latest kexec-tools
> > git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
> 
> There's no problem if using the latest kexec-tools
> root@lkp-bdw-de1 ~# ./kexec --version
> kexec-tools 2.0.20
> root@lkp-bdw-de1 ~# ./kexec --noefi -l
> vmlinuz-5.2.0-rc3-00004-g5b51ae969e3d8a --initrd final_initrd-borrow
> --reuse-cmdline
> root@lkp-bdw-de1 ~# ./kexec -e

Glad to know new kexec-tools works.

> 
> > 2. still use your old kexec-tools:
> >    a. test without --noefi
> 
> root@lkp-bdw-de1 ~# kexec vmlinuz-5.2.0-rc3-00004-g5b51ae969e3d8a --initrd
> final_initrd-borrow --reuse-cmdline
> Unknown type (Reserved) while parsing /sys/firmware/memmap/7/type. Please
> report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/13/type. Please
> report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/11/type. Please
> report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/1/type. Please
> report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/4/type. Please
> report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/12/type. Please
> report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/2/type. Please
> report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/9/type. Please
> report this as bug. Using RANGE_RESERVED now.
> Connection to lkp-bdw-de1 closed by remote host.
> Connection to lkp-bdw-de1 closed.

The system just reset?

What is your kexec-tools version?  As for kexec the userspace tool
version matters.

I never used kexec vmlinuz directly, usually kexec -l first then run
"reboot" command.  kexec -e also be fine but it will skip the
filesystem unmount etc.

> 
> 
> >    b. test with --noefi but with some appending acpi_rsdp= cmdline, for
> > example (enable serial to capture console log):
> > kexec --noefi -l .../vmlinuz-... --reuse-cmdline --append
> > "acpi_rsdp=0xaabbccdd earlyprintk=serial"
> 
> Sorry, I can't get console log from this machine.

Ok, but can you still try appeding acpi_rsdp test?  If this works then I
think from kexec perspective it is good enough.

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
