Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5E69FE4C
	for <lists+kexec@lfdr.de>; Wed, 28 Aug 2019 11:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhZi1qiTr3qFcqXlt1TcHjixFaoYCP8j3Bzy3+htvoU=; b=JoJdhB/31MJYw/
	7qxaeeSxJJl5+AfihGapHmTH9RRPv4VsTejjaOzxnFWbZQKy++H1SJJIJqQ8HMQ2tKbN10V5PTP94
	uEIAun3y/+GUpZPB0G940AyrMa8dI9JoFuzg+dCZHp8TWP0O3QQSBOtF6mj1J/QDh2qPMSeMhCghr
	G/aW758nxcB/CcrcRJREqxGUribBnQNC1Lvp2xgy2edpW+f4LSc21DaaQRDVmW+85SmInh/LTJADa
	ORCBEZCIifd9rk+YEQXcigwm+ubxxh9ZQ4vFzY1Ihn9BBvCVg5yHqgExnoEm6zn7n2ZFaTsRxO4Vh
	o3q/NgfMeohrmEQ1uK6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2u6q-0000DD-CA; Wed, 28 Aug 2019 09:19:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2u6i-0000AH-Jj
 for kexec@lists.infradead.org; Wed, 28 Aug 2019 09:19:14 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8F3D6470C;
 Wed, 28 Aug 2019 09:19:11 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-43.pek2.redhat.com [10.72.12.43])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 59D8B5C1D6;
 Wed, 28 Aug 2019 09:19:02 +0000 (UTC)
Subject: Re: [PATCH 0/4 v2] Limit the size of vmcore-dmesg.txt to 2G
From: lijiang <lijiang@redhat.com>
To: kexec@lists.infradead.org, horms@verge.net.au
References: <20190823120539.18330-1-lijiang@redhat.com>
Message-ID: <21c5b324-c3f5-4fb4-25da-e62610b2becd@redhat.com>
Date: Wed, 28 Aug 2019 17:18:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190823120539.18330-1-lijiang@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Wed, 28 Aug 2019 09:19:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_021912_663826_CEDA993E 
X-CRM114-Status: GOOD (  21.51  )
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
Cc: bhe@redhat.com, piliu@redhat.com, bhsharma@redhat.com, junw99@yahoo.com,
 dyoung@redhat.com, kasong@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi, Simon and other reviewers, any comment about v2?

Thanks.
Lianbo


> [PATCH 1/4] Cleanup: remove the read_elf_kcore()
> Here, no need to wrap the read_elf() again, lets invoke it directly.
> So remove the read_elf_kcore() and clean up redundant code.
> 
> [PATCH 2/4] Fix an error definition about the variable 'fname'
> The variable 'fname' is mistakenly defined two twice, the first definition
> is in the vmcore-dmesg.c, and the second definition is in the elf_info.c.
> That is confused and incorrect although it's a static type, because the
> value of variable 'fname' is not assigned(set) in elf_info.c. Anyway, its
> value will be always 'null' when printing an error information.
> 
> [PATCH 3/4] Cleanup: move it back from util_lib/elf_info.c
> Some code related to vmcore-dmesg.c is put into the util_lib, which
> is not very reasonable, so lets move it back and tidy up those code.
> In addition, that will also help to limit the size of vmcore-dmesg.txt.
> 
> [PATCH 4/4] Limit the size of vmcore-dmesg.txt to 2G
> With some corrupted vmcore files, the vmcore-dmesg.txt file may
> grow forever till the kdump disk becomes full. Lets limit the
> size of vmcore-dmesg.txt to avoid such problems.
> 
> BTW: I tested this patch series on x86 64 and arm64, it also worked well.
> 
> Changes since v1:
> [1] split them([patch 1/4] and [patch 2/4]) into a separate patch.
> [2] remove a typedef definition for handler.
> [3] remove some changes of variable 'fname' and fix its error.
> 
> Lianbo Jiang (4):
>   Cleanup: remove the read_elf_kcore()
>   Fix an error definition about the variable 'fname'
>   Cleanup: move it back from util_lib/elf_info.c
>   Limit the size of vmcore-dmesg.txt to 2G
> 
>  kexec/arch/arm64/kexec-arm64.c |  2 +-
>  util_lib/elf_info.c            | 65 ++++++++--------------------------
>  util_lib/include/elf_info.h    |  4 +--
>  vmcore-dmesg/vmcore-dmesg.c    | 42 ++++++++++++++++++++--
>  4 files changed, 57 insertions(+), 56 deletions(-)
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
