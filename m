Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273C710E298
	for <lists+kexec@lfdr.de>; Sun,  1 Dec 2019 17:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	Content-Description:MIME-Version:Reply-To:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bWPst5KMR/Bor3ebflWXaA5/0vm9UUm/Udt2Qs5jos8=; b=f0A
	XYA9r+FBu5c3KAKSZknNrOCp4TwZkWukzdgAb/l3Kg6ef95HLtir+yUv0R62+WITfsETmVFZvzycE
	3A8IH1nQ/WwPDyZ5IHgvm+H3knHAPA2bzkHxfbkBRQFvoiZlujYpkefhUE1/atmGxcG0FrrSRpIod
	crZPKNYyExMllx4V3Z+sMWZRvapg3swZHl0FZ+4fR7N070QIvOY2HIwliwIkvJu66QqoERQOevtOa
	oavV9ejRA/SaV4sYbeU22bXfjw8RP5lLTKSeFu/aU4EPx04XD96yFnbSxUxKhZjP9UmR6hplOhOFi
	vNkMvb98Iau+g6+2TMzXumtH4p+NuqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibS6N-0003jm-GF; Sun, 01 Dec 2019 16:29:39 +0000
Received: from mtax.cdmx.gob.mx ([187.141.35.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibS6H-0003jG-Bc
 for kexec@lists.infradead.org; Sun, 01 Dec 2019 16:29:34 +0000
X-NAI-Header: Modified by McAfee Email Gateway (4500)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cdmx.gob.mx; s=72359050-3965-11E6-920A-0192F7A2F08E;
 t=1575217586; h=DKIM-Filter:X-Virus-Scanned:
 Content-Type:MIME-Version:Content-Transfer-Encoding:
 Content-Description:Subject:To:From:Date:Message-Id:
 X-AnalysisOut:X-AnalysisOut:X-AnalysisOut:
 X-AnalysisOut:X-AnalysisOut:X-SAAS-TrackingID:
 X-NAI-Spam-Flag:X-NAI-Spam-Threshold:X-NAI-Spam-Score:
 X-NAI-Spam-Rules:X-NAI-Spam-Version; bh=M
 8rWdUYQ57RAYAgTWJQ4Rsch0kO0UXllaAVDzocOs4
 8=; b=KDl8gEdOv3NyQCy+cDv7q8gf6KymTejyHcTWOxoiIXbP
 Rg47Dto0WISLkuY26V7CHdq6rGSBA3e5oL/D8CaqLWcIx9qHpr
 NdVTxLWL/47b6AiysDqKzWNdD/Uq0Ez2gftZoquYKCzmWnBI05
 SM5wMYmRXpSGGbdhJLxQeFbM2FA=
Received: from cdmx.gob.mx (correo.cdmx.gob.mx [10.250.108.150]) by
 mtax.cdmx.gob.mx with smtp
 (TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-GCM-SHA384)
 id 217f_5f9e_2116886c_8a17_4e99_a950_4ee8f719aa7e;
 Sun, 01 Dec 2019 10:26:25 -0600
Received: from localhost (localhost [127.0.0.1])
 by cdmx.gob.mx (Postfix) with ESMTP id 0DD3E1E24EF;
 Sun,  1 Dec 2019 10:18:12 -0600 (CST)
Received: from cdmx.gob.mx ([127.0.0.1])
 by localhost (cdmx.gob.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id TLIIdhXNbJrw; Sun,  1 Dec 2019 10:18:11 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
 by cdmx.gob.mx (Postfix) with ESMTP id 139AD1E21C2;
 Sun,  1 Dec 2019 10:13:00 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.9.2 cdmx.gob.mx 139AD1E21C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cdmx.gob.mx;
 s=72359050-3965-11E6-920A-0192F7A2F08E; t=1575216780;
 bh=M8rWdUYQ57RAYAgTWJQ4Rsch0kO0UXllaAVDzocOs48=;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:To:
 From:Date:Message-Id;
 b=RU+ipuaWBY+ulpWxzrywtxbkOeYQKQYbR85oY4HYdjDOLKU0TUebMrQteH7NqiV46
 7k7DrRLZj7nOb4QPRwTVDyoJZvMpNuDtI3d42XhmUiXXFtrz4is2Y0tTpTjWurlf2x
 ZngEHYACarU4PnCmI1iainz4bSfhvFD4F7zX8Fjk=
X-Virus-Scanned: amavisd-new at cdmx.gob.mx
Received: from cdmx.gob.mx ([127.0.0.1])
 by localhost (cdmx.gob.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id UQIWVnI1JI1p; Sun,  1 Dec 2019 10:13:00 -0600 (CST)
Received: from [192.168.0.104] (unknown [188.125.168.160])
 by cdmx.gob.mx (Postfix) with ESMTPSA id 7CA6C1E27DD;
 Sun,  1 Dec 2019 10:04:21 -0600 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Congratulations
To: Recipients <aac-styfe@cdmx.gob.mx>
From: "Bishop Johnr" <aac-styfe@cdmx.gob.mx>
Date: Sun, 01 Dec 2019 17:04:14 +0100
Message-Id: <20191201160421.7CA6C1E27DD@cdmx.gob.mx>
X-AnalysisOut: [v=2.2 cv=R5pzIZZX c=1 sm=1 tr=0 p=6K-Ig8iNAUou4E5wYCEA:9 p]
X-AnalysisOut: [=zRI05YRXt28A:10 a=T6zFoIZ12MK39YzkfxrL7A==:117 a=9152RP8M]
X-AnalysisOut: [6GQqDhC/mI/QXQ==:17 a=8nJEP1OIZ-IA:10 a=pxVhFHJ0LMsA:10 a=]
X-AnalysisOut: [pGLkceISAAAA:8 a=wPNLvfGTeEIA:10 a=M8O0W8wq6qAA:10 a=Ygvjr]
X-AnalysisOut: [iKHvHXA2FhpO6d-:22]
X-SAAS-TrackingID: 0b9e3ed5.0.72334550.00-2388.121910714.s12p02m001.mxlogic.net
X-NAI-Spam-Flag: NO
X-NAI-Spam-Threshold: 3
X-NAI-Spam-Score: -5000
X-NAI-Spam-Rules: 1 Rules triggered
	WHITELISTED=-5000
X-NAI-Spam-Version: 2.3.0.9418 : core <6686> : inlines <7165> : streams
 <1840193> : uri <2949749>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_082933_510087_3977B735 
X-CRM114-Status: SPAM  (  -5.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Money was donated to you by Mr and Mrs Allen and Violet Large, just contact them with this email for more information 

EMail: allenandvioletlargeaward@gmail.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
