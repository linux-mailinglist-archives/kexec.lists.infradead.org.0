Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76A181869
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 13:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PyCAR3ZzPk/ir0sCLaqdYx1gt1y/s7AiwZLiMIcJlkY=; b=JJFqHRG/kHXD4HFGoOEqrhyhm
	Igykq1Pi77Os8GWsoUOzGxR6NCQhWCxQ+0BXOGDRySYsbUfPZbXuK/3X9gs8eS0IJhCVvUYQxVp+a
	0m3U6TJuD50LiRRPLehrCkP+gaAlExTPojC+jFveh9QtCopExB1GlUPOTmsuOPEA7v8b6dhAG5bTZ
	P/T9t3OMU4Ge+H8SLkDF9Y0ztAKvKeBWPFpkoBeDeyJu7JFEXwgVdUX1z+Z8Fpu+fwNTxMmcjMfIC
	roy4BE5VbuBw2PYs+gz1l6hJ8YC6nmdZM4o49wPEIYjs8wEkLwy4Mpdx27iz6as5LiHGCX5m5+5Nu
	NCAsAYv/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubV5-0004iK-1h; Mon, 05 Aug 2019 11:50:03 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubV1-0004bq-VY
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 11:50:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 04:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; d="scan'208";a="176293241"
Received: from lingjiew-mobl.ccr.corp.intel.com (HELO [10.255.29.244])
 ([10.255.29.244])
 by orsmga003.jf.intel.com with ESMTP; 05 Aug 2019 04:49:55 -0700
Subject: Re: [LKP] [x86/boot] 5b51ae969e: kexec boot failed
To: Borislav Petkov <bp@suse.de>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
 <20190802093024.GB30710@zn.tnic>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
Date: Mon, 5 Aug 2019 19:49:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802093024.GB30710@zn.tnic>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_045000_051875_17486502 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Baoquan He <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
 Chao Fan <fanc.fnst@cn.fujitsu.com>, kexec@lists.infradead.org,
 Jun'ichi Nomura <j-nomura@ce.jp.nec.com>, lkp@01.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

On 8/2/2019 5:30 PM, Borislav Petkov wrote:
> On Fri, Aug 02, 2019 at 03:48:53PM +0800, kernel test robot wrote:
>> FYI, we noticed the following commit (built with gcc-7):
>>
>> commit: 5b51ae969e3d8ab0134ee3c98a769ad6d2cc2e24 ("x86/boot: Call get_rsdp_addr() after console_init()")
>> https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git  master
>>
>> in testcase: boot
>>
>> on test machine: Intel(R) Core(TM) i3-3220 CPU @ 3.30GHz with 4G memory
>>
>> The commit broke kexec boot on physical machines, We have to set "nokaslr" to kernel cmdline to avoid the issue.
> How exactly do you trigger it? Details?
>

We use the following command to boot a new kernel:
kexec --noefi -l 
/opt/rootfs/tmp/pkg/linux/x86_64-rhel-7.6/gcc-7/5b51ae969e3d8ab0134ee3c98a769ad6d2cc2e24/vmlinuz-5.2.0-rc3-00004-g5b51ae969e3d8a 
--initrd=/opt/rootfs/tmp/initrd-concatenated

Best Regards,
Rong Chen



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
