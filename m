Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF8E11486D
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 22:00:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tf3G8V+ERDHB2Qqu9mzDKFQ5S3uChcFO/iqdxvSdu20=; b=oO3R17sHF/RVis
	QhvUs7BNI6cefAqckZDRiB288+7Eb1fEe82kCxuKQf+9CrgN/osKkAHfXTn3q5PDgrbXwyYNAKhf4
	qiu8j/utuzA/3DIFLB7igI6SuZcMQLY3xKGtIYkVcx8Ed3VEXITW+tQbiwr8bP3FAOvm4jKMkhFSM
	83veasiILEkVq+nNnpsPM1vkWKGizEQHvbVutycsbdv0v9Q8+zCajLUxAEd5qanFbCZ5yggFeljjg
	0dZb/sI0swnaXAaEbsOh9oVo9LNaqKHpiz+L//qRMI2eidusE4dr/uZ2qYNLBBldo0k3EQbqv2Alq
	9vPlIm8pPoswzvh8H25w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icyEB-000781-R3; Thu, 05 Dec 2019 20:59:59 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icyE8-000778-KU
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 20:59:58 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xB5Kxr9G021478
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 6 Dec 2019 05:59:53 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB5Kxrk8011129;
 Fri, 6 Dec 2019 05:59:53 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB5KxrVL002449;
 Fri, 6 Dec 2019 05:59:53 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.138] [10.38.151.138]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-1404278;
 Fri, 6 Dec 2019 05:59:25 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC10GP.gisp.nec.co.jp ([10.38.151.138]) with mapi id 14.03.0439.000; Fri, 6
 Dec 2019 05:59:24 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: John Donnelly <john.p.donnelly@oracle.com>
Subject: RE: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
Thread-Topic: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
Thread-Index: AQHVn8BCOkuS3n92Z0uNnKgAuwFy5qer7ctw
Date: Thu, 5 Dec 2019 20:59:23 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035975DB@BPXM09GP.gisp.nec.co.jp>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
 <B71B3868-9A0B-46AD-8777-97A1599BFB91@oracle.com>
 <CACi5LpOF2FLrmXEyJ4FfjqJBxxt-np2+1V0EFK__EH=6ubFE0A@mail.gmail.com>
 <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
In-Reply-To: <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.148]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_125956_901442_43349880 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> This is your makedumpfile pulled from sourceforge .
> 
> It would be helpful if you bumped the VERSION and DATE to be certain we are using the correct pieces .

Good suggestion.

I wanted the command line that executed makedumpfile in debug message
as well, so I'll think about adding them together.

Thanks,
Kazu
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
