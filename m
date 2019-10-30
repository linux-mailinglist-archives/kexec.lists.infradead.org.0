Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD70EA234
	for <lists+kexec@lfdr.de>; Wed, 30 Oct 2019 18:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HWbY2OsCqnGblo2ZpIoI8L7zCnKBOtNY51wLWkqN6U=; b=kw+N5lBkI6YLXH
	0aNQXl2vpMGyLCS5IOr5DPFCKiykb73++QGaA0vEYY/Ez+PllATTIourf1G4TdlsU9GwjloV6BQZH
	O0l4C+/dmL8PLtp2zxvdUlaux15kKLKcsmxMBKJshv5DaURHPZmpvIpP3hkcWeprqHnq2Epj5jdwr
	iG7B2OCcGh1FuKQv3sY2hwgDHKK/QClp8ecLEWbnLlJ09y3gNyC5uW6OegRtSFUXto+J/mrh+XuCx
	6lAiMLm4WOcFnw9AbOra7ca3tOsd7c3ky5XAPXx+x8I4WrYpokFr9ziWtAubyCTA0fAsJ2i09SO6+
	WgIpJUij9xVBq39JRzow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPrMW-0000fG-RZ; Wed, 30 Oct 2019 17:02:24 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrMT-0000en-Cc
 for kexec@lists.infradead.org; Wed, 30 Oct 2019 17:02:23 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x9UH2I7q017124
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 31 Oct 2019 02:02:18 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9UH2IZM005504;
 Thu, 31 Oct 2019 02:02:18 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9UH2Iaq012705; 
 Thu, 31 Oct 2019 02:02:18 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-9948917;
 Thu, 31 Oct 2019 02:01:21 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Thu,
 31 Oct 2019 02:01:20 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: John Donnelly <John.P.Donnelly@Oracle.com>
Subject: RE: Makedumpfile help for 5.4.0.rc3 : Arm
Thread-Topic: Makedumpfile help for 5.4.0.rc3 : Arm
Thread-Index: AQHViEDZSq812Kxm4UCQ/dmdPZPK46dk4M2AgADTPwCACtv74IAA4YUAgAHlemD//2wbgIAAqiFQ
Date: Wed, 30 Oct 2019 17:01:20 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC0359418B@BPXM09GP.gisp.nec.co.jp>
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
 <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
 <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
 <CACi5LpPRFi4BoyDp4dBDROJ48r6oZnenTJ_CE=MMefYnVnZ0ZA@mail.gmail.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03593E47@BPXM09GP.gisp.nec.co.jp>
 <CACi5LpOexc5ss6DRHOSWJeSAwwGPQ55z1XiFqenGzY1rLkzeqA@mail.gmail.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03594125@BPXM09GP.gisp.nec.co.jp>
 <d913b734-3896-9211-acc3-8be21f15ed1f@Oracle.com>
In-Reply-To: <d913b734-3896-9211-acc3-8be21f15ed1f@Oracle.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.133.170]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_100221_652886_70ECA4C4 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


> -----Original Message----- 
>     If there are corresponding kernel patches being considered to make
> makedumpfile work  on v8 and v8.x  systems I would be interesting in
> testing those also.
> 
> 
> makedumpfile should be able to work with a variety of VAbits as 48, or
> 52 settings.

Yes, Bhupesh will post his patches to do so.

The v3 patchset that was mentioned earlier is this:
https://lore.kernel.org/linux-arm-kernel/1553058574-18606-1-git-send-email-bhsharma@redhat.com/

We have to export things that we need and arm maintainers can export
to vmcoreinfo.

Thanks,
Kazu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
