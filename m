Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24985EC415
	for <lists+kexec@lfdr.de>; Fri,  1 Nov 2019 14:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpWIsmszg+l3KfO8jmwTWZatMcK5QPop64En3raQgDQ=; b=lD8JmaPORHfaby
	WJfuuVmP0/mU+KPNriND4fJfHycJ7B8KRlMER4woqxFLCaFDBBO6t3UT7agpW178wXgliek2Ht3W0
	2Z4kSmhxbTLqR+BsJHrHRCnn/8rNICmtSuqRFSsvnu3iRDQJbIphVXmNENyerygUmmm8s9LdvOnvb
	hjUHVOJK/TcHmyGXD3WjcwN3l9BpbmLFvnI9/JTHTQhQPvIo+cbqY7nrAP7RsVLyBYxrRnDGVR9Qt
	irhVOcObiqLVS8anvYz+OJdtF1jZ+bgiML3pDfVbxA+3sbaZjV3uMBIx/OKvgK0G5gRxOV2LTKfWD
	N2sZ5Rw8m6sPPyivHVuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXOs-0003fW-PV; Fri, 01 Nov 2019 13:55:38 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXOp-0003dw-1m
 for kexec@lists.infradead.org; Fri, 01 Nov 2019 13:55:37 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xA1DtPH8011106
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 1 Nov 2019 22:55:25 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA1DtPuC014495;
 Fri, 1 Nov 2019 22:55:25 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA1DtPET016338; 
 Fri, 1 Nov 2019 22:55:25 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.140] [10.38.151.140]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-10040060;
 Fri, 1 Nov 2019 22:54:32 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC12GP.gisp.nec.co.jp ([10.38.151.140]) with mapi id 14.03.0439.000; Fri, 1
 Nov 2019 22:54:31 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: "andi@firstfloor.org" <andi@firstfloor.org>
Subject: RE: [Crash-utility] crash and makedumpfile with 5.3 missing memory
 in dump
Thread-Topic: [Crash-utility] crash and makedumpfile with 5.3 missing memory
 in dump
Thread-Index: AQHVkLUPq+hYHo6dY0yTdfNzkTn1jad2UXNg
Date: Fri, 1 Nov 2019 13:54:30 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03594495@BPXM09GP.gisp.nec.co.jp>
References: <20191101014837.lxmqee5jyic7lk4d@two.firstfloor.org>
 <1684529127.9771679.1572612525461.JavaMail.zimbra@redhat.com>
 <1593ae18-e75d-0023-5895-04e3bcdb1950@Oracle.com>
In-Reply-To: <1593ae18-e75d-0023-5895-04e3bcdb1950@Oracle.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.135]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_065535_312479_2B193C76 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "Discussion list for crash utility usage,
 maintenance and development" <crash-utility@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

> -----Original Message-----
> >> I'm trying to use crash to read a makedumpfile vmcore from 5.3, but I always
> >> end up with an error when opening the dump.

As John mentioned, makedumpfile needs the following patch to work with
5.3 or later correctly.  This patch is in the devel branch now.
Please try the latest one.
https://sourceforge.net/p/makedumpfile/code/ci/7bdb468c2c99dd780c9a5321f93c79cbfdce2527/

Although the commit message says that it causes makedumpfile an error,
I saw some patterns later that makedumpfile created a broken dumpfile
without error.

(Usually I had to wrote "Required for kernel 5.3" in the commit message,
but forgot it at that time..)

Thanks,
Kazu

> >>
> >> I'm using the latest github crash
> >>
> >> crash 7.2.7++
> >> ...
> >>   crash: page excluded: kernel virtual address: ffffffff82110370  type:
> >>   "possible"
> >>   WARNING: cannot read cpu_possible_map
> >>   crash: page excluded: kernel virtual address: ffffffff82110360  type:
> >>   "present"
> >>   WARNING: cannot read cpu_present_map
> >>   crash: page excluded: kernel virtual address: ffffffff82110368  type:
> >>   "online"
> >>   WARNING: cannot read cpu_online_map
> >>   crash: page excluded: kernel virtual address: ffffffff82110358  type:
> >>   "active"
> >>   WARNING: cannot read cpu_active_map
> >>   crash: page excluded: kernel virtual address: ffffffff82011544  type:
> >>   "init_uts_ns"
> >>   crash: page excluded: kernel virtual address: ffffffff82110360  type:
> >>   "cpu_present_map"
> >>   crash: page excluded: kernel virtual address: ffffffff82110360  type:
> >>   "cpu_present_map"
> >>   WARNING: ORC unwinder: cannot read lookup_num_blocks
> >>   crash: seek error: kernel virtual address: ffff88822dffb000  type:
> >>   "memory section root table"
> >>
> >> The dump is created with the latest makedumpfile release
> >>
> >> makedumpfile: version 1.6.6 (released on 27 Jun 2019)
> >>
> >> It complains that it doesn't support the kernel
> >>
> >> Any ideas?
> >>
> >> -Andi
> >>



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
