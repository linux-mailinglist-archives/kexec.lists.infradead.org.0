Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02F97EE30
	for <lists+kexec@lfdr.de>; Fri,  2 Aug 2019 10:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQbloSyff0x9McquD+Ffj3uVF9/RafKi1IMSe3HQkA8=; b=E3ghR+2TdYS5l9
	Hr7DZXjKBHtJzeEp4xjFjxLyfMEW2g1anGK9WLuAyUX3UwecojEVYgtGG39JUsnHk5jFDuXW4IcTw
	pIdEM7lrNHs+6ajDPKv5cOde24eigqRLil02drjfJte3uIIj/7Qi63fzx/C4s9984s7s4G/WZHz5l
	VB0sP/613XjKKq5a1D8rh1rR0FBDxuOcw0pNc1spPe76Vk5uVDmXd6oPziolfS86slXNX5Aa1xZTr
	6TtJJ3nezrIjBGXwswv+wcza4PyY2hKDlc3znSWc1BQmAVawCZSQp6qHpyywJkKDYeMAtIfnpvK1C
	oLvZTBYl5l4SXomHwy7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSU0-0007d4-2g; Fri, 02 Aug 2019 08:00:12 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSTn-0007G4-9I
 for kexec@lists.infradead.org; Fri, 02 Aug 2019 08:00:01 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3B8BF3CA32;
 Fri,  2 Aug 2019 07:59:58 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-80.pek2.redhat.com
 [10.72.12.80])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BA4160852;
 Fri,  2 Aug 2019 07:59:52 +0000 (UTC)
Date: Fri, 2 Aug 2019 15:59:49 +0800
From: Dave Young <dyoung@redhat.com>
To: kernel test robot <rong.a.chen@intel.com>
Subject: Re: [x86/boot] 5b51ae969e: kexec boot failed
Message-ID: <20190802075949.GA4681@dhcp-128-65.nay.redhat.com>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 02 Aug 2019 07:59:58 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_005959_407437_4F891CA8 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi,

On 08/02/19 at 03:48pm, kernel test robot wrote:
> FYI, we noticed the following commit (built with gcc-7):
> 
> commit: 5b51ae969e3d8ab0134ee3c98a769ad6d2cc2e24 ("x86/boot: Call get_rsdp_addr() after console_init()")
> https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git  master
> 
> in testcase: boot
> 
> on test machine: Intel(R) Core(TM) i3-3220 CPU @ 3.30GHz with 4G memory
> 
> The commit broke kexec boot on physical machines, We have to set "nokaslr" to kernel cmdline to avoid the issue.
> 

Does moving line of "sanitize_boot_params(boot_params);" after get_rsdp_addr()
callback work?

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
