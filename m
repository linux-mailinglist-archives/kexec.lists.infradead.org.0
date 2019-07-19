Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01996EB35
	for <lists+kexec@lfdr.de>; Fri, 19 Jul 2019 21:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hkF3SYbkXaViysh29TKs2w4c9Ro4n0LIXtVstdabcOg=; b=HN/
	YZzyYOe5ariZcrtlEs6xx/4GqzWtAiincc0J9ZkBTdfDf/PC3uUtbvWwk3yEhkfZ8D0gw3bKVlznF
	NXQnd/MGMkMvefE1xadsCtgU/zntxrrBaSlR+x4sttxhKqZC45t/mChn9B0UeDnUo2rNoiUI1g+e2
	V9k29yVB9Xrkw3tECsLxNt9k4ByA117EPblHq/lMT/YwQAniNzak27/JKdBC75vNoCBMvwTThwMuQ
	Zg7i2fGF6EOcKW4nxClnCENy0/sy9PTVUtm+sk5A5FdPxjDPr0KAs1VmnZcCpFu9AM3QMJOZ9SW0l
	RN2uWdQRBTmtdhYfB6sGr/bdGhjgwDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYnY-0007BQ-5Y; Fri, 19 Jul 2019 19:44:08 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYnT-0007AH-17
 for kexec@lists.infradead.org; Fri, 19 Jul 2019 19:44:04 +0000
Received: by mail-ed1-x52f.google.com with SMTP id s49so600827edb.1
 for <kexec@lists.infradead.org>; Fri, 19 Jul 2019 12:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=delphix.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=tqTsX3yHTgW+8dqm94lrQOWr5fYfAEoHwpS5/OyBimE=;
 b=BtfgFjlfbUiQJCsiKqLufkksQNmRx7TI5Pp/xtHOuC+mtP3eYUT+FN5Auooc/JT2Ck
 KRD4oKCCUzYa2qRN/uXlnxqLmkG3OqPNLrEl3b+YOsVSqO27TdkRx3ventMA4Q0K3bWE
 Z2AMux9r3dfFRRG5eQZ+tJpJe0WXgeWx5kwR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tqTsX3yHTgW+8dqm94lrQOWr5fYfAEoHwpS5/OyBimE=;
 b=Tv5yWeNmP8KjRyM2JH12pPaOYOQCkerC+tpu3HofhIMLRNGeVIfC4RjkowH0H2Mm4a
 ZF9UTN5fZmRrTQsnrtqEFY4myBgccmHdf2HvHqZeH/1sqk1e7BvQrjaQVm+FkJY6vVkS
 684XeL6kV59GJtbQtzv1MBvHIIV11rD66TP7EfVapUwz7sQIefFj9mzIsH2BQxOTA0Kk
 c5FJNr2KDVyuXB9nma8qskypQKaEwGkJJjU8HbUbkijhvYkOpudrpEKuSK7eLI5IRnbb
 OSgiEOkcXPaG4ALWVKKU4MHAftxyhQVNbl5EaPunfm39MKGuOFWlRAifB/ZdOjfG6agv
 m+Cw==
X-Gm-Message-State: APjAAAXRCC38x6m4gEDap6+38fgjVrx80WJskCqTKjyFnSz96LOggr9T
 Oeh6nPCNzOAL/otnyp8bcRwVQ+n/0TV+H0jIA5mFlSRB26A=
X-Google-Smtp-Source: APXvYqwXXdt/Icvb0iJzn6N45aEaeHOobcSo8AR4gX2ONWxYnsodjtfw0FqMemEuHnsD1ovmFs435OE5BychUpE/Euo=
X-Received: by 2002:a05:6402:1285:: with SMTP id
 w5mr48929735edv.36.1563565440843; 
 Fri, 19 Jul 2019 12:44:00 -0700 (PDT)
MIME-Version: 1.0
From: Donald Brady <don.brady@delphix.com>
Date: Fri, 19 Jul 2019 13:43:49 -0600
Message-ID: <CAPEr6wVVboDUxUrGE77NtS2WWrhR8vV0EEGPvPMJ+hfzkAb26g@mail.gmail.com>
Subject: [RFC] makedumpfile: exclude ZFS file cache pages
To: kexec@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_124403_073244_F783B01A 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello,

I have for consideration a makedumpfile patch that can exclude the ZFS
file data cache pages. This is similar in capability as the exclusion
of the VFS page cache pages.

My question to this list is how to proceed?  Should I post a patch or
should I first explain how the ZFS pages are being marked and see if
others here can recommend a better approach?

Long term, ZFS should participate in the VFS page cache. However, that
is a significant change and won't be available in the foreseeable
future. There is an immediate benefit from excluding ZFS file cache
pages that will benefit crash dump users that use ZFS.

Thanks in advance for your help!
-Don

-- 
DON BRADY
Staff Engineer
Delphix.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
