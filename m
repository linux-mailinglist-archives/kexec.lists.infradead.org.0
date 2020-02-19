Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A328016451B
	for <lists+kexec@lfdr.de>; Wed, 19 Feb 2020 14:14:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:
	Subject:Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OTkLJj9P8n3BBu2+6wzcvxZiLlqL2gmXyy6Mb0aq3Uo=; b=O/1
	WNImM4fAd4IV90WExGmPl6iIkYd9grG7nq6/voE0ERKzI6Werpgt4t13Gx76+gpUpcOQgw7/dchAD
	QgHsQqpHk8+Afsz84nLL4N1F+sEtvhMdVHZd6409LF1wQZdxEeJOKVPoi/36KIVviMgoH+BJl3kjc
	y0C48W5v9s7Hw3RBr/WVIQkcGj2wyu2g94wSmqw8Nc0iyK2yzU6OaHrdERGofDpGsb+/NSoH/4hwV
	YFvArbZHGwCMmwNCYtIvJZMfiGdhiSBVdYzVKmcKszytmfLmTBsaBrpBpw8C179786ORgi7tXsVQG
	nALdtieNdcCNDhm6WsnD9eOy6k1bqhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4PBm-0007GG-B0; Wed, 19 Feb 2020 13:14:54 +0000
Received: from scm.imp.edu.mx ([132.247.16.103])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4PBi-0007Fk-MK
 for kexec@lists.infradead.org; Wed, 19 Feb 2020 13:14:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by scm.imp.edu.mx (Postfix) with ESMTP id B8E5718C8A8;
 Wed, 19 Feb 2020 05:51:08 -0600 (CST)
X-Virus-Scanned: by SpamTitan at imp.edu.mx
Received: from scm.imp.edu.mx (localhost [127.0.0.1])
 by scm.imp.edu.mx (Postfix) with ESMTP id AA06F18B8AE;
 Wed, 19 Feb 2020 04:42:12 -0600 (CST)
Authentication-Results: scm.imp.edu.mx; none
Received: from imp.edu.mx (unknown [10.249.93.105])
 by scm.imp.edu.mx (Postfix) with ESMTP id 9CFE018B879;
 Wed, 19 Feb 2020 04:42:08 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
 by imp.edu.mx (Postfix) with ESMTP id 411CD18063510E;
 Wed, 19 Feb 2020 04:42:09 -0600 (CST)
Received: from imp.edu.mx ([127.0.0.1])
 by localhost (imp.edu.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Nw_gnULQB2DV; Wed, 19 Feb 2020 04:42:09 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
 by imp.edu.mx (Postfix) with ESMTP id 1740A18062F223;
 Wed, 19 Feb 2020 04:42:09 -0600 (CST)
X-Virus-Scanned: amavisd-new at imp.edu.mx
Received: from imp.edu.mx ([127.0.0.1])
 by localhost (imp.edu.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id VUSwtoP1PAq3; Wed, 19 Feb 2020 04:42:09 -0600 (CST)
Received: from [45.147.4.119] (unknown [45.147.4.119])
 by imp.edu.mx (Postfix) with ESMTPSA id 6E8851800F1C0D;
 Wed, 19 Feb 2020 04:42:07 -0600 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: 19-02-2020
To: Recipients <mucios@imp.edu.mx>
From: "urs portmann" <mucios@imp.edu.mx>
Date: Wed, 19 Feb 2020 21:42:05 +1100
Message-Id: <20200219104207.6E8851800F1C0D@imp.edu.mx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_051450_897747_603F872D 
X-CRM114-Status: SPAM  (  -5.07  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
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
Reply-To: onube@qq.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Guten Morgen,
                                          19-02-2020
Wir haben versucht, Sie zu erreichen und haben noch nichts von Ihnen geh=F6=
rt. Haben Sie unsere letzte E-Mail =FCber Ihre S.p.e.n.d.e erhalten? Wenn n=
icht, melden Sie sich bitte bei uns, um weitere Informationen zu erhalten.

Wir warten darauf, von Ihnen zu h=F6ren, sobald Sie diese Nachricht erhalte=
n, die Sie bei der weiteren Vorgehensweise unterst=FCtzt.

Mfg
urs portmann

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
